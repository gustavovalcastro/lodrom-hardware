#ifndef LODROM_SPIFFS_H
#define LODROM_SPIFFS_H

#include "esp_err.h"
#include <stdbool.h>

static const char SPIFFS_TAG[] = "lodrom_spiffs";
static const char HTTP_TAG[] = "lodrom_spiffs_http";
static const char JSON_READ_TAG[] = "lodrom_json_read";

#define MOUNT_PATH "/spiffs"

void spiffs_init();

void save_credentials_to_spiffs(const char *username, const char *password);

void read_credentials_from_spiffs();

esp_err_t download_file_to_spiffs(const char *url, const char *filepath);

void save_filename_to_json(const char *filename, const char *json_path);

char* read_json_from_spiffs(const char* filepath);

void parse_json(const char* json_string);

void list_files_in_spiffs();
bool file_exists(const char *filename);
void print_spiffs_file_size(const char *file_path);

#endif // LODROM_SPIFFS_H
