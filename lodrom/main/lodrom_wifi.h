#ifndef LODROM_WIFI_H
#define LODROM_WIFI_H

static const char WIFI_TAG[] = "lodrom_wifi_start";
static const char WIFI_RESET_TAG[] = "lodrom_wifi_reset";

void cb_connection_ok(void *pvParameter);
void reset_wifi_settings();
void lodrom_wifi_start();
void wait_for_wifi_connection();  // Add this declaration

#endif // LODROM_WIFI_H
