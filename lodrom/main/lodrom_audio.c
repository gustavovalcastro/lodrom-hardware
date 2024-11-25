#include "lodrom_audio.h"
#include "esp_log.h"
#include "esp_err.h"
#include "driver/i2s.h"
#include "esp_spiffs.h"
#include "lodrom_pins.h"
#include <stdio.h>
#include <string.h>

/*#define I2S_CHANNELS      2*/
/*#define I2S_SAMPLE_RATE   44100*/

#define AUDIO_TAG "LODROM_AUDIO"
#define I2S_NUM           I2S_NUM_0
#define I2S_SAMPLE_RATE   8000
#define I2S_BITS_PER_SAMPLE I2S_BITS_PER_SAMPLE_16BIT
#define I2S_CHANNELS      1

#define I2S_BCLK_IO       27
#define I2S_LRCK_IO       14
#define I2S_DOUT_IO       26

void lodrom_audio_init(void)
{
    ESP_LOGI(AUDIO_TAG, "Initializing I2S...");

    i2s_config_t i2s_config = {
        .mode = I2S_MODE_MASTER | I2S_MODE_TX,
        .sample_rate = I2S_SAMPLE_RATE,
        .bits_per_sample = I2S_BITS_PER_SAMPLE,
        .channel_format = I2S_CHANNEL_FMT_RIGHT_LEFT,
        .communication_format = I2S_COMM_FORMAT_STAND_I2S,
        .intr_alloc_flags = ESP_INTR_FLAG_LEVEL1,
        .dma_buf_count = 4,
        .dma_buf_len = 1024,
        .use_apll = false,
    };

    i2s_pin_config_t pin_config = {
        .bck_io_num = I2S_BCLK_IO,
        .ws_io_num = I2S_LRCK_IO,
        .data_out_num = I2S_DOUT_IO,
        .data_in_num = I2S_PIN_NO_CHANGE
    };

    ESP_ERROR_CHECK(i2s_driver_install(I2S_NUM, &i2s_config, 0, NULL));
    ESP_ERROR_CHECK(i2s_set_pin(I2S_NUM, &pin_config));

    ESP_LOGI(AUDIO_TAG, "I2S initialized");
}

void play_samples_task(void *pvParameters) {
    const char **samples = (const char **)pvParameters;
    play_samples(samples);
    vTaskDelete(NULL); // Delete the task when done
}

void play_samples(const char* samples[])
{
    hook_led_control = false;
    gpio_set_level(PIN_HOOK_OUTPUT, 1);
    lodrom_audio_play(samples[0]);
    vTaskDelay(pdMS_TO_TICKS(1000));
    lodrom_audio_play(samples[1]);
    vTaskDelay(pdMS_TO_TICKS(1000));
    lodrom_audio_play(samples[2]);
    vTaskDelay(pdMS_TO_TICKS(1000));
    hook_led_control = true;
}

// Function to read and validate WAV header
bool read_and_validate_wav_header(const char *file_path, wav_header_t *wav_header) {
    FILE *wav_file = fopen(file_path, "rb");
    if (wav_file == NULL) {
        ESP_LOGE("AUDIO", "Failed to open WAV file: %s", file_path);
        return false;
    }

    // Read the WAV header
    size_t read_bytes = fread(wav_header, 1, sizeof(wav_header_t), wav_file);
    fclose(wav_file);

    if (read_bytes != sizeof(wav_header_t)) {
        ESP_LOGE("AUDIO", "Failed to read WAV header. Read %d bytes, expected %d bytes.",
                 read_bytes, sizeof(wav_header_t));
        return false;
    }

    // Validate RIFF and WAVE headers
    if (strncmp(wav_header->riff_header, "RIFF", 4) != 0 ||
        strncmp(wav_header->wave_header, "WAVE", 4) != 0) {
        ESP_LOGE("AUDIO", "Invalid WAV file format. Missing RIFF or WAVE headers.");
        return false;
    }

    // Validate format chunk
    if (strncmp(wav_header->fmt_header, "fmt ", 4) != 0) {
        ESP_LOGE("AUDIO", "Invalid WAV file format. Missing 'fmt ' chunk.");
        return false;
    }

    // Validate audio format (only PCM supported)
    if (wav_header->audio_format != 1) {
        ESP_LOGE("AUDIO", "Unsupported audio format. Only PCM is supported (found format: %d).",
                 wav_header->audio_format);
        return false;
    }

    // Validate bit depth
    if (wav_header->bit_depth != 16) {
        ESP_LOGE("AUDIO", "Unsupported bit depth: %d. Only 16-bit WAV files are supported.",
                 wav_header->bit_depth);
        return false;
    }

    // Validate data chunk
    if (strncmp(wav_header->data_header, "data", 4) != 0) {
        ESP_LOGE("AUDIO", "Invalid WAV file format. Missing 'data' chunk.");
        return false;
    }

    // Log WAV file details
    ESP_LOGI("AUDIO", "WAV File Details:");
    ESP_LOGI("AUDIO", "Sample Rate: %d Hz", wav_header->sample_rate);
    ESP_LOGI("AUDIO", "Channels: %d", wav_header->num_channels);
    ESP_LOGI("AUDIO", "Bit Depth: %d", wav_header->bit_depth);
    ESP_LOGI("AUDIO", "Data Bytes: %d", wav_header->data_bytes);

    return true;
}

bool lodrom_audio_play(const char *file_path)
{
    ESP_LOGI(AUDIO_TAG, "Playing WAV file: %s", file_path);

    FILE *wav_file = fopen(file_path, "rb");
    if (!wav_file) {
        ESP_LOGE(AUDIO_TAG, "Failed to open file: %s", file_path);
        return false;
    }

    char header[44];
    size_t bytes_read = fread(header, 1, sizeof(header), wav_file);
    if (bytes_read != sizeof(header)) {
        ESP_LOGE(AUDIO_TAG, "Failed to read WAV header");
        fclose(wav_file);
        return false;
    }

    if (strncmp(header, "RIFF", 4) != 0 || strncmp(header + 8, "WAVE", 4) != 0) {
        ESP_LOGE(AUDIO_TAG, "Invalid WAV file");
        fclose(wav_file);
        return false;
    }

    ESP_LOGI(AUDIO_TAG, "WAV file valid. Starting playback...");

    char buffer[1024];
    size_t bytes_written, bytes_to_read;

    while ((bytes_to_read = fread(buffer, 1, sizeof(buffer), wav_file)) > 0) {
        i2s_write(I2S_NUM, buffer, bytes_to_read, &bytes_written, portMAX_DELAY);
    }

    // Playback complete
    ESP_LOGI(AUDIO_TAG, "Playback finished");

    // Drain I2S buffer
    /*i2s_zero_dma_buffer(I2S_NUM); // Clear the I2S DMA buffer*/
    vTaskDelay(pdMS_TO_TICKS(400)); // Allow time for the buffer to drain
    i2s_zero_dma_buffer(I2S_NUM); // Clear the I2S DMA buffer

    // Stop I2S
    /*i2s_stop(I2S_NUM);*/

    fclose(wav_file);
    return true;
}

/*bool lodrom_audio_play(const char *file_path)*/
/*{*/
    /*ESP_LOGI(AUDIO_TAG, "Playing WAV file: %s", file_path);*/

    /*FILE *wav_file = fopen(file_path, "rb");*/
    /*if (!wav_file) {*/
        /*ESP_LOGE(AUDIO_TAG, "Failed to open file: %s", file_path);*/
        /*return false;*/
    /*}*/

    /*char header[44];*/
    /*size_t bytes_read = fread(header, 1, sizeof(header), wav_file);*/
    /*if (bytes_read != sizeof(header)) {*/
        /*ESP_LOGE(AUDIO_TAG, "Failed to read WAV header");*/
        /*fclose(wav_file);*/
        /*return false;*/
    /*}*/

    /*if (strncmp(header, "RIFF", 4) != 0 || strncmp(header + 8, "WAVE", 4) != 0) {*/
        /*ESP_LOGE(AUDIO_TAG, "Invalid WAV file");*/
        /*fclose(wav_file);*/
        /*return false;*/
    /*}*/

    /*ESP_LOGI(AUDIO_TAG, "WAV file valid. Starting playback...");*/

    /*char buffer[1024];*/
    /*size_t bytes_written, bytes_to_read;*/
    /*bool playback_done = false;*/

    /*while (!playback_done) {*/
        /*bytes_to_read = fread(buffer, 1, sizeof(buffer), wav_file);*/
        /*if (bytes_to_read > 0) {*/
            /*// Write the data to the I2S driver*/
            /*i2s_write(I2S_NUM, buffer, bytes_to_read, &bytes_written, portMAX_DELAY);*/
        /*}*/
        /*else {*/
            /*// EOF reached, stop playback*/
            /*playback_done = true;*/
        /*}*/
    /*}*/

    /*ESP_LOGI(AUDIO_TAG, "Playback finished");*/
    /*fclose(wav_file);*/
    /*return true;*/
/*}*/
    /*[>i2s_zero_dma_buffer(I2S_NUM);<]*/

