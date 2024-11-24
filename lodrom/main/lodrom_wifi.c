#include "lodrom_wifi.h"

#include <esp_wifi.h>
#include <esp_netif.h>
#include "wifi_manager.h"
#include "nvs_flash.h"
#include "esp_system.h"

#include "lodrom_wifi.h"
#include "esp_log.h"

static EventGroupHandle_t wifi_event_group;
const int CONNECTED_BIT = BIT0;  // Define a bitmask to check for Wi-Fi connection

// Wi-Fi event handler callback for IP address assignment
void cb_connection_ok(void *pvParameter) {
    ip_event_got_ip_t *param = (ip_event_got_ip_t *)pvParameter;

    /* transform IP to human-readable string */
    char str_ip[16];
    esp_ip4addr_ntoa(&param->ip_info.ip, str_ip, IP4ADDR_STRLEN_MAX);

    ESP_LOGI(WIFI_TAG, "Connected to WiFi. Got IP: %s", str_ip);

    // Set the bit to signal Wi-Fi connection success
    xEventGroupSetBits(wifi_event_group, CONNECTED_BIT);
}

// Function to wait for Wi-Fi connection (IP obtained)
void wait_for_wifi_connection() {
    ESP_LOGI(WIFI_TAG, "Waiting for Wi-Fi connection...");
    xEventGroupWaitBits(wifi_event_group, CONNECTED_BIT, pdFALSE, pdTRUE, portMAX_DELAY);
    ESP_LOGI(WIFI_TAG, "Wi-Fi connected and IP address obtained.");
}

void reset_wifi_settings() {
    wifi_manager_destroy();

    esp_err_t err = esp_event_loop_delete_default();
    if (err == ESP_ERR_INVALID_STATE) {
        ESP_LOGW(WIFI_RESET_TAG, "Default event loop was not active");
    } else if (err != ESP_OK) {
        ESP_LOGE(WIFI_RESET_TAG, "Failed to delete default event loop: %s", esp_err_to_name(err));
    } else {
        ESP_LOGI(WIFI_RESET_TAG, "Default event loop deleted");
    }

    err = nvs_flash_erase();
    if (err == ESP_OK) {
        ESP_LOGI(WIFI_RESET_TAG, "NVS flash erased successfully");
    } else {
        ESP_LOGE(WIFI_RESET_TAG, "Failed to erase NVS flash: %s", esp_err_to_name(err));
        return;
    }

    ESP_LOGI("Reboot", "Rebooting the ESP32 now...");
    esp_restart(); // Perform a software reset
}

void lodrom_wifi_start() {
    // Create the event group to track the Wi-Fi connection
    wifi_event_group = xEventGroupCreate();
    if (wifi_event_group == NULL) {
        ESP_LOGE(WIFI_TAG, "Failed to create Wi-Fi event group");
        return;
    }

    // Start Wi-Fi Manager
    wifi_manager_start();

    // Register Wi-Fi event callback to handle connection success
    wifi_manager_set_callback(WM_EVENT_STA_GOT_IP, &cb_connection_ok);

    // Wait for the Wi-Fi connection to be established (IP obtained)
    wait_for_wifi_connection();
}
