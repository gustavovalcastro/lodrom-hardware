#include "lodrom_spiffs.h"

#include "dirent.h"
#include "esp_http_client.h"
#include "esp_spiffs.h"
#include "esp_err.h"
#include "esp_log.h"
#include "cJSON.h"

void spiffs_init()
{
    // SPIFFS Configuration
    esp_vfs_spiffs_conf_t conf = {
        .base_path = "/spiffs",              // Mount path for SPIFFS
        .partition_label = NULL,             // Use default partition
        .max_files = 5,                      // Max open files
        .format_if_mount_failed = true       // Format if mount fails
    };

    // Mount SPIFFS
    esp_err_t ret = esp_vfs_spiffs_register(&conf);

    if (ret != ESP_OK) {
        if (ret == ESP_FAIL) {
            ESP_LOGE(SPIFFS_TAG, "Failed to mount or format filesystem");
        } else if (ret == ESP_ERR_NOT_FOUND) {
            ESP_LOGE(SPIFFS_TAG, "Failed to find SPIFFS partition");
        } else {
            ESP_LOGE(SPIFFS_TAG, "Failed to initialize SPIFFS (%s)", esp_err_to_name(ret));
        }
        return;
    }

    // Get SPIFFS Info
    size_t total = 0, used = 0;
    ret = esp_spiffs_info(NULL, &total, &used);
    if (ret != ESP_OK) {
        ESP_LOGE(SPIFFS_TAG, "Failed to get SPIFFS partition information (%s)", esp_err_to_name(ret));
    } else {
        ESP_LOGI(SPIFFS_TAG, "Partition size: total: %d, used: %d", total, used);
    }

    /*FILE *f = fopen("/spiffs/lodrom.txt", "w");*/
    /*fprintf(f, "{\"app\": Lodrom}");*/
    /*fclose(f);*/

    /*f = fopen("/spiffs/lodrom.txt", "r");*/
    /*char buff[64];*/
    /*fgets(buff, sizeof(buff), f);*/
    /*ESP_LOGI(SPIFFS_TAG, "%s", buff);*/
}

void save_credentials_to_spiffs(const char *username, const char *password) {
    // Create a JSON object
    cJSON *root = cJSON_CreateObject();
    if (root == NULL) {
        ESP_LOGE(SPIFFS_TAG, "Failed to create JSON object");
        return;
    }

    // Add username and password to the JSON object
    cJSON_AddStringToObject(root, "username", username);
    cJSON_AddStringToObject(root, "password", password);

    // Convert JSON object to a string
    char *json_string = cJSON_Print(root);
    if (json_string == NULL) {
        ESP_LOGE(SPIFFS_TAG, "Failed to create JSON string");
        cJSON_Delete(root);
        return;
    }

    // Open the file for writing
    FILE *f = fopen("/spiffs/credentials.json", "w");
    if (f == NULL) {
        ESP_LOGE(SPIFFS_TAG, "Failed to open file for writing");
        cJSON_free(json_string);
        cJSON_Delete(root);
        return;
    }

    // Write the JSON string to the file
    fprintf(f, "%s", json_string);
    fclose(f);
    ESP_LOGI(SPIFFS_TAG, "Credentials saved to /spiffs/credentials.json");

    // Free resources
    cJSON_free(json_string);
    cJSON_Delete(root);
}

void read_credentials_from_spiffs() {
    // Open the file for reading
    FILE *f = fopen("/spiffs/credentials.json", "r");
    if (f == NULL) {
        ESP_LOGE(SPIFFS_TAG, "Failed to open file for reading");
        return;
    }

    // Get the file size
    fseek(f, 0, SEEK_END);
    long file_size = ftell(f);
    rewind(f);

    // Allocate memory to store the file content
    char *buffer = malloc(file_size + 1);
    if (buffer == NULL) {
        ESP_LOGE(SPIFFS_TAG, "Failed to allocate memory for file content");
        fclose(f);
        return;
    }

    // Read the file content
    fread(buffer, 1, file_size, f);
    buffer[file_size] = '\0'; // Null-terminate the string
    fclose(f);

    // Parse the JSON
    cJSON *root = cJSON_Parse(buffer);
    if (root == NULL) {
        ESP_LOGE(SPIFFS_TAG, "Failed to parse JSON");
        free(buffer);
        return;
    }

    // Extract username and password
    const cJSON *username = cJSON_GetObjectItemCaseSensitive(root, "username");
    const cJSON *password = cJSON_GetObjectItemCaseSensitive(root, "password");

    if (cJSON_IsString(username) && cJSON_IsString(password)) {
        ESP_LOGI(SPIFFS_TAG, "Username: %s, Password: %s", username->valuestring, password->valuestring);
    } else {
        ESP_LOGE(SPIFFS_TAG, "Invalid JSON structure");
    }

    // Free resources
    cJSON_Delete(root);
    free(buffer);
}

esp_err_t download_file_to_spiffs(const char *url, const char *filepath) {
    const char *root_ca = \
        "-----BEGIN CERTIFICATE-----\n" \
        "MIIEdTCCA12gAwIBAgIJAKcOSkw0grd/MA0GCSqGSIb3DQEBCwUAMGgxCzAJBgNV\n" \
        "BAYTAlVTMSUwIwYDVQQKExxTdGFyZmllbGQgVGVjaG5vbG9naWVzLCBJbmMuMTIw\n" \
        "MAYDVQQLEylTdGFyZmllbGQgQ2xhc3MgMiBDZXJ0aWZpY2F0aW9uIEF1dGhvcml0\n" \
        "eTAeFw0wOTA5MDIwMDAwMDBaFw0zNDA2MjgxNzM5MTZaMIGYMQswCQYDVQQGEwJV\n" \
        "UzEQMA4GA1UECBMHQXJpem9uYTETMBEGA1UEBxMKU2NvdHRzZGFsZTElMCMGA1UE\n" \
        "ChMcU3RhcmZpZWxkIFRlY2hub2xvZ2llcywgSW5jLjE7MDkGA1UEAxMyU3RhcmZp\n" \
        "ZWxkIFNlcnZpY2VzIFJvb3QgQ2VydGlmaWNhdGUgQXV0aG9yaXR5IC0gRzIwggEi\n" \
        "MA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDVDDrEKvlO4vW+GZdfjohTsR8/\n" \
        "y8+fIBNtKTrID30892t2OGPZNmCom15cAICyL1l/9of5JUOG52kbUpqQ4XHj2C0N\n" \
        "Tm/2yEnZtvMaVq4rtnQU68/7JuMauh2WLmo7WJSJR1b/JaCTcFOD2oR0FMNnngRo\n" \
        "Ot+OQFodSk7PQ5E751bWAHDLUu57fa4657wx+UX2wmDPE1kCK4DMNEffud6QZW0C\n" \
        "zyyRpqbn3oUYSXxmTqM6bam17jQuug0DuDPfR+uxa40l2ZvOgdFFRjKWcIfeAg5J\n" \
        "Q4W2bHO7ZOphQazJ1FTfhy/HIrImzJ9ZVGif/L4qL8RVHHVAYBeFAlU5i38FAgMB\n" \
        "AAGjgfAwge0wDwYDVR0TAQH/BAUwAwEB/zAOBgNVHQ8BAf8EBAMCAYYwHQYDVR0O\n" \
        "BBYEFJxfAN+qAdcwKziIorhtSpzyEZGDMB8GA1UdIwQYMBaAFL9ft9HO3R+G9FtV\n" \
        "rNzXEMIOqYjnME8GCCsGAQUFBwEBBEMwQTAcBggrBgEFBQcwAYYQaHR0cDovL28u\n" \
        "c3MyLnVzLzAhBggrBgEFBQcwAoYVaHR0cDovL3guc3MyLnVzL3guY2VyMCYGA1Ud\n" \
        "HwQfMB0wG6AZoBeGFWh0dHA6Ly9zLnNzMi51cy9yLmNybDARBgNVHSAECjAIMAYG\n" \
        "BFUdIAAwDQYJKoZIhvcNAQELBQADggEBACMd44pXyn3pF3lM8R5V/cxTbj5HD9/G\n" \
        "VfKyBDbtgB9TxF00KGu+x1X8Z+rLP3+QsjPNG1gQggL4+C/1E2DUBc7xgQjB3ad1\n" \
        "l08YuW3e95ORCLp+QCztweq7dp4zBncdDQh/U90bZKuCJ/Fp1U1ervShw3WnWEQt\n" \
        "8jxwmKy6abaVd38PMV4s/KCHOkdp8Hlf9BRUpJVeEXgSYCfOn8J3/yNTd126/+pZ\n" \
        "59vPr5KW7ySaNRB6nJHGDn2Z9j8Z3/VyVOEVqQdZe4O/Ui5GjLIAZHYcSNPYeehu\n" \
        "VsyuLAOQ1xk4meTKCRlb/weWsKh/NEnfVqn3sF/tM+2MR7cwA130A4w=\n" \
        "-----END CERTIFICATE-----";

    esp_http_client_config_t config = {
        .url = url,
        .cert_pem = root_ca,
        .transport_type = HTTP_TRANSPORT_OVER_SSL,
    };

    esp_http_client_handle_t client = esp_http_client_init(&config);
    if (esp_http_client_open(client, 0) != ESP_OK) {
        ESP_LOGE(HTTP_TAG, "Failed to open HTTP connection");
        esp_http_client_cleanup(client);
        return ESP_FAIL;
    }

    FILE *file = fopen(filepath, "wb");
    if (file == NULL) {
        ESP_LOGE(SPIFFS_TAG, "Failed to open file for writing: %s", filepath);
        esp_http_client_cleanup(client);
        return ESP_FAIL;
    }

    char buffer[1024];
    int bytes_read;
    long total_written = 0;

    while ((bytes_read = esp_http_client_read(client, buffer, sizeof(buffer))) > 0) {
        ESP_LOGI(HTTP_TAG, "Read %d bytes from HTTP stream", bytes_read);
        size_t written = fwrite(buffer, 1, bytes_read, file);
        if (written != bytes_read) {
            ESP_LOGE(SPIFFS_TAG, "File write error!");
            fclose(file);
            esp_http_client_cleanup(client);
            return ESP_FAIL;
        }
        total_written += written;
    }

    fclose(file);
    esp_http_client_cleanup(client);

    if (bytes_read < 0) {
        ESP_LOGE(HTTP_TAG, "Error while downloading file");
        return ESP_FAIL;
    }

    ESP_LOGI(SPIFFS_TAG, "File downloaded successfully: %s (%ld bytes)", filepath, total_written);
    return ESP_OK;
}

/*esp_err_t download_file_to_spiffs(const char *url, const char *filepath) {*/
    /*const char *root_ca = \*/
        /*"-----BEGIN CERTIFICATE-----\n" \*/
        /*"MIIEdTCCA12gAwIBAgIJAKcOSkw0grd/MA0GCSqGSIb3DQEBCwUAMGgxCzAJBgNV\n" \*/
        /*"BAYTAlVTMSUwIwYDVQQKExxTdGFyZmllbGQgVGVjaG5vbG9naWVzLCBJbmMuMTIw\n" \*/
        /*"MAYDVQQLEylTdGFyZmllbGQgQ2xhc3MgMiBDZXJ0aWZpY2F0aW9uIEF1dGhvcml0\n" \*/
        /*"eTAeFw0wOTA5MDIwMDAwMDBaFw0zNDA2MjgxNzM5MTZaMIGYMQswCQYDVQQGEwJV\n" \*/
        /*"UzEQMA4GA1UECBMHQXJpem9uYTETMBEGA1UEBxMKU2NvdHRzZGFsZTElMCMGA1UE\n" \*/
        /*"ChMcU3RhcmZpZWxkIFRlY2hub2xvZ2llcywgSW5jLjE7MDkGA1UEAxMyU3RhcmZp\n" \*/
        /*"ZWxkIFNlcnZpY2VzIFJvb3QgQ2VydGlmaWNhdGUgQXV0aG9yaXR5IC0gRzIwggEi\n" \*/
        /*"MA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDVDDrEKvlO4vW+GZdfjohTsR8/\n" \*/
        /*"y8+fIBNtKTrID30892t2OGPZNmCom15cAICyL1l/9of5JUOG52kbUpqQ4XHj2C0N\n" \*/
        /*"Tm/2yEnZtvMaVq4rtnQU68/7JuMauh2WLmo7WJSJR1b/JaCTcFOD2oR0FMNnngRo\n" \*/
        /*"Ot+OQFodSk7PQ5E751bWAHDLUu57fa4657wx+UX2wmDPE1kCK4DMNEffud6QZW0C\n" \*/
        /*"zyyRpqbn3oUYSXxmTqM6bam17jQuug0DuDPfR+uxa40l2ZvOgdFFRjKWcIfeAg5J\n" \*/
        /*"Q4W2bHO7ZOphQazJ1FTfhy/HIrImzJ9ZVGif/L4qL8RVHHVAYBeFAlU5i38FAgMB\n" \*/
        /*"AAGjgfAwge0wDwYDVR0TAQH/BAUwAwEB/zAOBgNVHQ8BAf8EBAMCAYYwHQYDVR0O\n" \*/
        /*"BBYEFJxfAN+qAdcwKziIorhtSpzyEZGDMB8GA1UdIwQYMBaAFL9ft9HO3R+G9FtV\n" \*/
        /*"rNzXEMIOqYjnME8GCCsGAQUFBwEBBEMwQTAcBggrBgEFBQcwAYYQaHR0cDovL28u\n" \*/
        /*"c3MyLnVzLzAhBggrBgEFBQcwAoYVaHR0cDovL3guc3MyLnVzL3guY2VyMCYGA1Ud\n" \*/
        /*"HwQfMB0wG6AZoBeGFWh0dHA6Ly9zLnNzMi51cy9yLmNybDARBgNVHSAECjAIMAYG\n" \*/
        /*"BFUdIAAwDQYJKoZIhvcNAQELBQADggEBACMd44pXyn3pF3lM8R5V/cxTbj5HD9/G\n" \*/
        /*"VfKyBDbtgB9TxF00KGu+x1X8Z+rLP3+QsjPNG1gQggL4+C/1E2DUBc7xgQjB3ad1\n" \*/
        /*"l08YuW3e95ORCLp+QCztweq7dp4zBncdDQh/U90bZKuCJ/Fp1U1ervShw3WnWEQt\n" \*/
        /*"8jxwmKy6abaVd38PMV4s/KCHOkdp8Hlf9BRUpJVeEXgSYCfOn8J3/yNTd126/+pZ\n" \*/
        /*"59vPr5KW7ySaNRB6nJHGDn2Z9j8Z3/VyVOEVqQdZe4O/Ui5GjLIAZHYcSNPYeehu\n" \*/
        /*"VsyuLAOQ1xk4meTKCRlb/weWsKh/NEnfVqn3sF/tM+2MR7cwA130A4w=\n" \*/
        /*"-----END CERTIFICATE-----";*/

    /*esp_http_client_config_t config = {*/
        /*.url = url,*/
        /*.cert_pem = root_ca,          */
        /*.transport_type = HTTP_TRANSPORT_OVER_SSL,  */
    /*};*/

    /*esp_http_client_handle_t client = esp_http_client_init(&config);*/
    /*if (esp_http_client_open(client, 0) != ESP_OK) {*/
        /*ESP_LOGE(HTTP_TAG, "Failed to open HTTP connection");*/
        /*esp_http_client_cleanup(client);*/
        /*return ESP_FAIL;*/
    /*}*/

    /*FILE *file = fopen(filepath, "wb");*/
    /*if (file == NULL) {*/
        /*ESP_LOGE(SPIFFS_TAG, "Failed to open file for writing: %s", filepath);*/
        /*esp_http_client_cleanup(client);*/
        /*return ESP_FAIL;*/
    /*}*/

    /*char buffer[1024];*/
    /*int bytes_read;*/
    /*while ((bytes_read = esp_http_client_read(client, buffer, sizeof(buffer))) > 0) {*/
        /*fwrite(buffer, 1, bytes_read, file);*/
    /*}*/

    /*fclose(file);*/
    /*esp_http_client_cleanup(client);*/

    /*if (bytes_read < 0) {*/
        /*ESP_LOGE(HTTP_TAG, "Error while downloading file");*/
        /*return ESP_FAIL;*/
    /*}*/

    /*ESP_LOGI(SPIFFS_TAG, "File downloaded successfully: %s", filepath);*/
    /*return ESP_OK;*/
/*}*/

void save_filename_to_json(const char *filename, const char *json_path) {
    // Create JSON object
    cJSON *root = cJSON_CreateObject();
    if (root == NULL) {
        ESP_LOGE(SPIFFS_TAG, "Failed to create JSON object");
        return;
    }

    // Add file name to the JSON object
    cJSON_AddStringToObject(root, "file_name", filename);

    // Convert JSON object to string
    char *json_string = cJSON_Print(root);
    if (json_string == NULL) {
        ESP_LOGE(SPIFFS_TAG, "Failed to create JSON string");
        cJSON_Delete(root);
        return;
    }

    // Write JSON string to file
    FILE *f = fopen(json_path, "w");
    if (f == NULL) {
        ESP_LOGE(SPIFFS_TAG, "Failed to open JSON file for writing: %s", json_path);
        cJSON_free(json_string);
        cJSON_Delete(root);
        return;
    }

    fprintf(f, "%s", json_string);
    fclose(f);

    ESP_LOGI(SPIFFS_TAG, "File name saved to JSON: %s", json_path);

    // Free resources
    cJSON_free(json_string);
    cJSON_Delete(root);
}

void list_files_in_spiffs()
{
    struct dirent *entry;
    DIR *dir = opendir(MOUNT_PATH);

    if (dir == NULL) {
        ESP_LOGE(SPIFFS_TAG, "Failed to open directory %s", MOUNT_PATH);
        return;
    }

    ESP_LOGI(SPIFFS_TAG, "Listing files in %s:", MOUNT_PATH);
    while ((entry = readdir(dir)) != NULL) {
        ESP_LOGI(SPIFFS_TAG, "Found file: %s", entry->d_name);
    }

    closedir(dir);
}

bool file_exists(const char *filename) {
    FILE *f = fopen(filename, "r");
    if (f == NULL) {
        return false;
    }
    fclose(f);
    return true;
}

// Function to print the size of a file in SPIFFS
void print_spiffs_file_size(const char *file_path) {
    // Open the file in read mode
    FILE *file = fopen(file_path, "rb");
    if (file == NULL) {
        ESP_LOGE("SPIFFS", "Failed to open file: %s", file_path);
        return;
    }

    // Seek to the end of the file to determine its size
    fseek(file, 0, SEEK_END);
    long file_size = ftell(file);
    fclose(file);

    if (file_size < 0) {
        ESP_LOGE("SPIFFS", "Error getting file size for: %s", file_path);
    } else {
        ESP_LOGI("SPIFFS", "File size of %s: %ld bytes", file_path, file_size);
    }
}

















char* read_json_from_spiffs(const char* filepath) {
    FILE* file = fopen(filepath, "r");
    if (file == NULL) {
        ESP_LOGE(JSON_READ_TAG, "Failed to open file: %s", filepath);
        return NULL;
    }

    // Seek to the end of the file to determine its size
    fseek(file, 0, SEEK_END);
    long file_size = ftell(file);
    rewind(file);

    if (file_size <= 0) {
        ESP_LOGE(JSON_READ_TAG, "File is empty or size error: %s", filepath);
        fclose(file);
        return NULL;
    }

    // Allocate memory to hold the file contents
    char* buffer = malloc(file_size + 1);
    if (buffer == NULL) {
        ESP_LOGE(JSON_READ_TAG, "Failed to allocate memory for file contents");
        fclose(file);
        return NULL;
    }

    // Read the file contents into the buffer
    fread(buffer, 1, file_size, file);
    buffer[file_size] = '\0'; // Null-terminate the string

    fclose(file);
    return buffer;
}

void parse_json(const char* json_string) {
    cJSON* root = cJSON_Parse(json_string);
    if (root == NULL) {
        ESP_LOGE(JSON_READ_TAG, "Failed to parse JSON");
        return;
    }

    // Example: Print each key-value pair in the JSON
    cJSON* item = NULL;
    cJSON_ArrayForEach(item, root) {
        const char* key = item->string;
        const char* value = cJSON_IsString(item) ? cJSON_GetStringValue(item) : "Non-string value";
        ESP_LOGI(JSON_READ_TAG, "Key: %s, Value: %s", key, value);
    }

    cJSON_Delete(root);
}





















    /*esp_http_client_handle_t client = esp_http_client_init(&config);*/

    // Perform the HTTP request (this might already exist in your code)
    /*esp_err_t err = esp_http_client_perform(client);*/
    /*if (err == ESP_OK) {*/
        /*ESP_LOGI("Main", "MP3 file downloaded successfully");*/
    /*} else {*/
        /*ESP_LOGE("Main", "Failed to download MP3 file: %s", esp_err_to_name(err));*/
    /*}*/

    /*esp_http_client_cleanup(client);*/

    /*esp_http_client_config_t config = {*/
        /*.url = url,*/
        /*.timeout_ms = 10000,*/
    /*};*/
