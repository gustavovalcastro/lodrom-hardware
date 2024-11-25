#ifndef LODROM_PINS_H
#define LODROM_PINS_H

#include "driver/gpio.h"

#define DEBOUNCE_TIME_MS 2000
#define RING_DEBOUNCE_TIME_MS 10000

extern volatile bool door_led_control;
extern volatile bool hook_led_control;

// Inputs
#define PIN_WIFI_RESET GPIO_NUM_21
#define PIN_DOOR_INPUT GPIO_NUM_22
#define PIN_HOOK_INPUT GPIO_NUM_23
#define PIN_RING_INPUT GPIO_NUM_19
#define PIN_DEBUG_INPUT GPIO_NUM_18

// Outputs
#define PIN_DOOR_OUTPUT GPIO_NUM_2
#define PIN_HOOK_OUTPUT GPIO_NUM_4

#endif // LODROM_PINS_H
