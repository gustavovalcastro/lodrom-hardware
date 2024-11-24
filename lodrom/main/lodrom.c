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

/* @brief tag used for ESP serial console messages */
static const char TAG[] = "Main";

#include "esp_timer.h"

#define DEBOUNCE_TIME_MS 2000
#define PIN_WIFI_RESET GPIO_NUM_21

#define PIN_DOOR_INPUT GPIO_NUM_22
#define PIN_HOOK_INPUT GPIO_NUM_23
#define PIN_DOOR_OUTPUT GPIO_NUM_2
#define PIN_HOOK_OUTPUT GPIO_NUM_4

void init_io()
{
    gpio_set_direction(PIN_DOOR_OUTPUT, GPIO_MODE_OUTPUT);
    gpio_set_direction(PIN_HOOK_OUTPUT, GPIO_MODE_OUTPUT);
    gpio_set_level(PIN_DOOR_OUTPUT, 1);
    gpio_set_level(PIN_HOOK_OUTPUT, 1);

    gpio_set_direction(PIN_WIFI_RESET, GPIO_MODE_INPUT);
    gpio_set_pull_mode(PIN_WIFI_RESET, GPIO_PULLUP_ONLY);
    gpio_set_direction(PIN_DOOR_INPUT, GPIO_MODE_INPUT);
    gpio_set_pull_mode(PIN_DOOR_INPUT, GPIO_PULLUP_ONLY);
    gpio_set_direction(PIN_HOOK_INPUT, GPIO_MODE_INPUT);
    gpio_set_pull_mode(PIN_HOOK_INPUT, GPIO_PULLUP_ONLY);
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

void test(esp_mqtt_client_handle_t client)
{
    static uint64_t last_interrupt_time = 0;

    uint64_t current_time = esp_timer_get_time();
    uint64_t time_since_last = current_time - last_interrupt_time;

    if (time_since_last > DEBOUNCE_TIME_MS * 1000) { // Convert milliseconds to microseconds
        last_interrupt_time = current_time;
        ESP_LOGI(TAG, "MQTT MESSAGE");
        char test_message[] = "Hello MQTT";
        esp_mqtt_client_publish(client, TOPIC, test_message, strlen(test_message), 1, 0);
    }
}


void app_main(void)
{
    init_io();
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

        // Parse and process the JSON contents
        parse_json(json_string);

        // Free the allocated memory
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

    while(true)
    {
        if (gpio_get_level(PIN_DOOR_INPUT))
        {
            gpio_set_level(PIN_DOOR_OUTPUT, 1);
        }
        else
        {
            gpio_set_level(PIN_DOOR_OUTPUT, 0);
        }

        if (gpio_get_level(PIN_HOOK_INPUT))
        {
            gpio_set_level(PIN_HOOK_OUTPUT, 1);
        }
        else
        {
            gpio_set_level(PIN_HOOK_OUTPUT, 0);
            test(mqtt_client);
        }

        if (!gpio_get_level(PIN_WIFI_RESET))
        {
            /*reset_wifi();*/
            lodrom_audio_play(audio_path);
        }


        vTaskDelay(10);
    }
}
