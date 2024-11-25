#include <stdio.h>
#include "driver/gpio.h"
#include "hal/gpio_types.h"
#include "soc/gpio_num.h"
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"

/*#include "esp_spiffs.h"*/
#include "esp_err.h"
#include "esp_log.h"

/*#include "cJSON.h"*/

// Custom
#include "lodrom_wifi.h"
#include "lodrom_spiffs.h"
#include "lodrom_audio.h"
#include "lodrom_mqtt.h"
#include "lodrom_pins.h"
#include "lodrom_api.h"

/* @brief tag used for ESP serial console messages */
static const char TAG[] = "Main";

#include "esp_timer.h"

void init_io()
{
    // Outputs
    gpio_set_direction(PIN_DOOR_OUTPUT, GPIO_MODE_OUTPUT);
    gpio_set_direction(PIN_HOOK_OUTPUT, GPIO_MODE_OUTPUT);
    gpio_set_level(PIN_DOOR_OUTPUT, 1);
    gpio_set_level(PIN_HOOK_OUTPUT, 1);

    // Inputs
    gpio_set_direction(PIN_WIFI_RESET, GPIO_MODE_INPUT);
    gpio_set_pull_mode(PIN_WIFI_RESET, GPIO_PULLUP_ONLY);
    gpio_set_direction(PIN_DOOR_INPUT, GPIO_MODE_INPUT);
    gpio_set_pull_mode(PIN_DOOR_INPUT, GPIO_PULLUP_ONLY);
    gpio_set_direction(PIN_HOOK_INPUT, GPIO_MODE_INPUT);
    gpio_set_pull_mode(PIN_HOOK_INPUT, GPIO_PULLUP_ONLY);
    gpio_set_direction(PIN_RING_INPUT, GPIO_MODE_INPUT);
    gpio_set_pull_mode(PIN_RING_INPUT, GPIO_PULLDOWN_ONLY);
    gpio_set_direction(PIN_DEBUG_INPUT, GPIO_MODE_INPUT);
    gpio_set_pull_mode(PIN_DEBUG_INPUT, GPIO_PULLUP_ONLY);
}

void reset_wifi()
{
    static uint64_t last_interrupt_time = 0;

    uint64_t current_time = esp_timer_get_time();
    uint64_t time_since_last = current_time - last_interrupt_time;

    if (time_since_last > DEBOUNCE_TIME_MS * 1000) { // Convert milliseconds to microseconds
        last_interrupt_time = current_time;
        ESP_LOGI(TAG, "WIFI reset");
        reset_wifi_settings();
    }
}

void handle_door_input()
{
    static uint64_t last_interrupt_time = 0;

    uint64_t current_time = esp_timer_get_time();
    uint64_t time_since_last = current_time - last_interrupt_time;

    if (time_since_last > DEBOUNCE_TIME_MS * 1000) { // Debounce
        last_interrupt_time = current_time;
        ESP_LOGI(TAG, "Door input activated, calling api_event_1");

        door_led_control = false;
        gpio_set_level(PIN_DOOR_OUTPUT, 0);
        vTaskDelay(pdMS_TO_TICKS(1000));
        gpio_set_level(PIN_DOOR_OUTPUT, 1);
        door_led_control = true;

        api_event_1();
    }
}

void test(esp_mqtt_client_handle_t client)
{
    static uint64_t last_interrupt_time = 0;

    uint64_t current_time = esp_timer_get_time();
    uint64_t time_since_last = current_time - last_interrupt_time;

    if (time_since_last > DEBOUNCE_TIME_MS * 1000) { // Convert milliseconds to microseconds
        last_interrupt_time = current_time;
        ESP_LOGI(TAG, "MQTT MESSAGE");
        char test_message_portao[] = "Portao";
        char test_message_recado[] = "Recado";
        esp_mqtt_client_publish(client, TOPIC_PORTAO, test_message_portao, strlen(test_message_portao), 1, 0);
        vTaskDelay(pdMS_TO_TICKS(1000));
        esp_mqtt_client_publish(client, TOPIC_RECADO, test_message_recado, strlen(test_message_recado), 1, 0);
        vTaskDelay(pdMS_TO_TICKS(1000));
    }
}

#define TAG "RING"
#define RING_TIMER_PERIOD_MS 8000 // 15 seconds

static TimerHandle_t ring_timer;
static bool is_timer_active = false;

void timer_callback(TimerHandle_t xTimer) {
    ESP_LOGI(TAG, "There are notes for you!");
    is_timer_active = false; // Timer finished

    xTaskCreate(api_event_5_task, "API Event 5 Task", 8192, NULL, 5, NULL);
}

void ring()
{
    static uint64_t last_interrupt_time = 0;

    uint64_t current_time = esp_timer_get_time();
    uint64_t time_since_last = current_time - last_interrupt_time;

    if (time_since_last > RING_DEBOUNCE_TIME_MS * 1000) { // Convert milliseconds to microseconds
        last_interrupt_time = current_time;
        ESP_LOGI(TAG, "Intercom is ringing!");

        // Send POST request
        api_event_3();

        // Start or reset the timer
        if (is_timer_active) {
            xTimerReset(ring_timer, 0);
        } else {
            xTimerStart(ring_timer, 0);
            is_timer_active = true;
        }
    }
}


void check_hook_input_task(void *pvParameters) {
    while (true) {
        if (is_timer_active && gpio_get_level(PIN_HOOK_INPUT) == 1) {
            ESP_LOGI(TAG, "Answered!");
            xTimerStop(ring_timer, 0);
            is_timer_active = false;
            api_event_4();
        }

        vTaskDelay(pdMS_TO_TICKS(100)); // Poll every 100 ms
    }
}

void init_ring_system() {
    // Create the timer
    ring_timer = xTimerCreate("Ring Timer", pdMS_TO_TICKS(RING_TIMER_PERIOD_MS), pdFALSE, NULL, timer_callback);

    // Create the task to monitor PIN_DOOR_INPUT
    xTaskCreate(check_hook_input_task, "Check Door Input", 8096, NULL, 10, NULL);
}

volatile bool door_led_control = true;
volatile bool hook_led_control = true;

void app_main(void)
{
    init_io();
    init_ring_system();
    spiffs_init();
    lodrom_audio_init();

    const char *audio_path = "/spiffs/sample_audio.wav";
    const char *url = "https://lodrom-polly.s3.us-east-1.amazonaws.com/ALVORADA/recado_4c095bcb-8689-44c5-87c9-75984b839726.wav";
    const char *json_path = "/spiffs/audio_files.json";
    const char *credentials_path = "/spiffs/credentials.json";
    
    if (!file_exists(credentials_path)) {
        save_credentials_to_spiffs("lodrom", "lodrom123");
        read_credentials_from_spiffs();
    }
    else {
        ESP_LOGI(TAG, "Credentials file exists");
    }

    list_files_in_spiffs();

    lodrom_wifi_start();

    /*vTaskDelay(1000);*/

    esp_mqtt_client_handle_t mqtt_client = mqtt_init();

    /*if(!file_exists(audio_path)) {*/
        /*if (download_file_to_spiffs(url, audio_path) == ESP_OK) {*/
            /*ESP_LOGI(TAG, "Audio file downloaded successfully");*/

            /*save_filename_to_json(audio_path, json_path);*/

        /*} else {*/
            /*ESP_LOGE(TAG, "Failed to download audio file");*/
        /*}*/
    /*}*/
    /*else {*/
        /*ESP_LOGI(TAG, "Audio file exists");*/
    /*}*/

    char* json_string = read_json_from_spiffs(json_path);
    if (json_string != NULL) {
        ESP_LOGI(JSON_READ_TAG, "JSON File Contents: %s", json_string);

        parse_json(json_string);
        free(json_string);
    } else {
        ESP_LOGE(JSON_READ_TAG, "Failed to read JSON file");
    }

    print_spiffs_file_size(audio_path);

    /*lodrom_audio_play(audio_path);*/

    wav_header_t wav_header;
    if (read_and_validate_wav_header(audio_path, &wav_header)) {
        ESP_LOGI("AUDIO", "WAV file is valid. Ready to play!");
    } else {
        ESP_LOGE("AUDIO", "Failed to validate WAV file. Playback aborted.");
    }

    /*read_and_validate_wav_header(audio_path, &wav_header);*/

    /*lodrom_audio_play(audio_path);*/

    while (true) {
        if (door_led_control) {
            /*gpio_set_level(PIN_DOOR_OUTPUT, gpio_get_level(PIN_DOOR_INPUT));*/
            if (gpio_get_level(PIN_DOOR_INPUT) == 0) {
                /*gpio_set_level(PIN_DOOR_OUTPUT, 0);*/
                handle_door_input();
            }
            /*else{*/
                /*gpio_set_level(PIN_DOOR_OUTPUT, 1);*/
            /*}*/
        }

        if (hook_led_control) {
            gpio_set_level(PIN_HOOK_OUTPUT, gpio_get_level(PIN_HOOK_INPUT));
        }

        if (gpio_get_level(PIN_RING_INPUT)) {
            ring();
        }

        if (!gpio_get_level(PIN_WIFI_RESET)) {
            reset_wifi();
        }

        if (!gpio_get_level(PIN_DEBUG_INPUT)) {
            /*lodrom_audio_play(audio_path);*/
            test(mqtt_client);
        }

        vTaskDelay(10 / portTICK_PERIOD_MS);
    }
}
