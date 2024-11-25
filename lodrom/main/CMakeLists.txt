idf_component_register(
                    SRCS    "lodrom.c"
                            "lodrom_wifi.c"
                            "lodrom_spiffs.c"
                            "lodrom_audio.c"
                            "lodrom_mqtt.c"
                            "lodrom_api.c"
                    INCLUDE_DIRS "."
                    )
spiffs_create_partition_image(storage spiffs_data FLASH_IN_PROJECT)
