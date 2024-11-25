#ifndef LODROM_AUDIO_H
#define LODROM_AUDIO_H

#include <stdbool.h>

// WAV header structure
#pragma pack(push, 1)
typedef struct {
    char riff_header[4];  // Contains "RIFF"
    int wav_size;         // File size - 8 bytes
    char wave_header[4];  // Contains "WAVE"
    char fmt_header[4];   // Contains "fmt "
    int fmt_chunk_size;   // Should be 16 for PCM
    short audio_format;   // Should be 1 for PCM
    short num_channels;   // Mono = 1, Stereo = 2
    int sample_rate;      // Sampling frequency
    int byte_rate;        // sample_rate * num_channels * Bytes Per Sample
    short sample_alignment; // num_channels * Bytes Per Sample
    short bit_depth;      // Bits per sample (16 bits typical)
    char data_header[4];  // Contains "data"
    int data_bytes;       // Number of bytes in the data section
} wav_header_t;
#pragma pack(pop)

/**
 * @brief Initialize audio playback
 */
void lodrom_audio_init(void);

/**
 * @brief Play a WAV file from SPIFFS
 *
 * @param file_path Path to the WAV file in SPIFFS
 * @return true if playback starts successfully, false otherwise
 */
bool lodrom_audio_play(const char *file_path);

bool read_and_validate_wav_header(const char *file_path, wav_header_t *wav_header);

void play_samples(const char* samples[]);

void play_samples_task(void *pvParameters);

#endif // LODROM_AUDIO_H
