#ifndef MQTT_HELPER_H
#define MQTT_HELPER_H

#include "mqtt_client.h"

// MQTT Configuration
#define BROKER "mqtts://7c1135d9a0c74d6da4c07a96475b8a31.s1.eu.hivemq.cloud"
#define PORT 8883
#define TOPIC "ALVORADA/controle_portao"
#define USERNAME "lodrom"
#define PASSWORD "Lodrom123"
#define MQTT_QOS 1

static const char MQTT_TAG[] = "lodrom_mqtt";

/**
 * @brief Initializes the MQTT client and connects to the broker.
 *
 * @return esp_mqtt_client_handle_t Handle to the MQTT client.
 */
esp_mqtt_client_handle_t mqtt_init();

#endif // MQTT_HELPER_H
