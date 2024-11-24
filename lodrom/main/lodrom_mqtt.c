#include "lodrom_mqtt.h"

#include "mqtt_client.h"
#include "esp_err.h"
#include "esp_log.h"

static void mqtt_event_handler_cb(void *ctx, const char *event_base, int event_id, void *event_data) {
    esp_mqtt_event_handle_t event = (esp_mqtt_event_handle_t)event_data;
    esp_mqtt_client_handle_t client = event->client;

    ESP_LOGI(MQTT_TAG, "Event ID: %d", event->event_id);
    char topic[event->topic_len + 1];
    char data[event->data_len + 1];
    
    switch (event->event_id) {
        case MQTT_EVENT_CONNECTED:
            ESP_LOGI(MQTT_TAG, "Connected to MQTT broker, attempting to subscribe...");
            esp_err_t subscribe_result = esp_mqtt_client_subscribe(client, TOPIC, MQTT_QOS);
            ESP_LOGI(MQTT_TAG, "MQTT Connected successfully");
            if (subscribe_result != ESP_OK) {
                ESP_LOGE(MQTT_TAG, "Failed to subscribe to topic %s: %d", TOPIC, subscribe_result);
            } else {
                ESP_LOGI(MQTT_TAG, "Successfully subscribed to topic: %s", TOPIC);
            }
            break;

        case MQTT_EVENT_DISCONNECTED:
            ESP_LOGI(MQTT_TAG, "MQTT Disconnected. Will automatically try to reconnect...");
            break;

        case MQTT_EVENT_SUBSCRIBED:
            ESP_LOGI(MQTT_TAG, "Successfully subscribed to topic with msg_id=%d", event->msg_id);
            char test_message[] = "Device successfully subscribed!";
            esp_mqtt_client_publish(client, TOPIC, test_message, strlen(test_message), 1, 0);
            break;

        case MQTT_EVENT_DATA:
            snprintf(topic, event->topic_len + 1, "%.*s", event->topic_len, event->topic);
            snprintf(data, event->data_len + 1, "%.*s", event->data_len, event->data);
            
            ESP_LOGI(MQTT_TAG, "========= MQTT Message Received =========");
            ESP_LOGI(MQTT_TAG, "Topic: %s", topic);
            ESP_LOGI(MQTT_TAG, "Data: %s", data);
            ESP_LOGI(MQTT_TAG, "=======================================");
            break;

        case MQTT_EVENT_ERROR:
            if (event->error_handle) {
                ESP_LOGE(MQTT_TAG, "MQTT_EVENT_ERROR: %d", event->error_handle->error_type);
                if (event->error_handle->error_type == MQTT_ERROR_TYPE_TCP_TRANSPORT) {
                    ESP_LOGE(MQTT_TAG, "Last error code reported from esp-tls: 0x%x", event->error_handle->esp_tls_last_esp_err);
                    ESP_LOGE(MQTT_TAG, "Last tls stack error number: 0x%x", event->error_handle->esp_tls_stack_err);
                    ESP_LOGE(MQTT_TAG, "Last captured errno : %d (%s)", event->error_handle->esp_transport_sock_errno,
                            strerror(event->error_handle->esp_transport_sock_errno));
                }
            } else {
                ESP_LOGW(MQTT_TAG, "MQTT_EVENT_ERROR without error_handle - likely during initialization, continuing...");
            }
            break;

        default:
            ESP_LOGD(MQTT_TAG, "Other event id: %d", event->event_id);
            break;
    }
}

esp_mqtt_client_handle_t mqtt_init() {
    static const char *root_cert = 
    "-----BEGIN CERTIFICATE-----\n" \
    "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\n" \
    "-----END CERTIFICATE-----";


    const esp_mqtt_client_config_t mqtt_cfg = {
        .broker = {
            .address = {
                /*.uri = "mqtts://" BROKER, // Use mqtts for SSL connection*/
                .uri = BROKER, // Use mqtts for SSL connection
                .port = PORT
            }
        },
        .credentials = {
            .username = USERNAME,
            .authentication = {
                .password = PASSWORD
            }
        },
        .broker.verification = {
            .certificate = root_cert, // Add your CA certificate if needed
        }
    };

    // Log all configuration parameters
    ESP_LOGI(MQTT_TAG, "==== MQTT Configuration ====");
    ESP_LOGI(MQTT_TAG, "Broker URI: %s", BROKER);
    ESP_LOGI(MQTT_TAG, "Port: %d", PORT);
    ESP_LOGI(MQTT_TAG, "Username length: %d", strlen(USERNAME));
    ESP_LOGI(MQTT_TAG, "Password length: %d", strlen(PASSWORD));
    ESP_LOGI(MQTT_TAG, "Certificate length: %d", strlen(root_cert));

    // Verify the URI format
    if (strncmp(BROKER, "mqtt://", 7) != 0 && strncmp(BROKER, "mqtts://", 8) != 0) {
        ESP_LOGE(MQTT_TAG, "Invalid broker URI format. Must start with mqtt:// or mqtts://");
        return NULL;
    }

    // Initialize the client with verbose logging
    ESP_LOGI(MQTT_TAG, "Initializing MQTT client...");
    esp_mqtt_client_handle_t client = esp_mqtt_client_init(&mqtt_cfg);
    if (!client) {
        ESP_LOGE(MQTT_TAG, "Client initialization failed!");
        return NULL;
    }
    ESP_LOGI(MQTT_TAG, "Client initialization successful");

    // Register event handler with additional error checking
    esp_err_t reg_result = esp_mqtt_client_register_event(client, ESP_EVENT_ANY_ID, mqtt_event_handler_cb, client);
    if (reg_result != ESP_OK) {
        ESP_LOGE(MQTT_TAG, "Failed to register event handler: %s", esp_err_to_name(reg_result));
        esp_mqtt_client_destroy(client);
        return NULL;
    }
    ESP_LOGI(MQTT_TAG, "Event handler registered successfully");

    // Start the client with error checking
    ESP_LOGI(MQTT_TAG, "Starting MQTT client...");
    esp_err_t start_result = esp_mqtt_client_start(client);
    if (start_result != ESP_OK) {
        ESP_LOGE(MQTT_TAG, "Failed to start MQTT client: %s", esp_err_to_name(start_result));
        esp_mqtt_client_destroy(client);
        return NULL;
    }

    ESP_LOGI(MQTT_TAG, "MQTT client started successfully");

    return client;
}

