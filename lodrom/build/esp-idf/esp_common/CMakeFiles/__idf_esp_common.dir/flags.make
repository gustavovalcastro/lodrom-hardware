# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.28

# compile C with /home/betelgeuse/.espressif/tools/xtensa-esp-elf/esp-13.2.0_20240530/xtensa-esp-elf/bin/xtensa-esp32-elf-gcc
C_DEFINES = -DADF_VER=\"v2.7-26-gae35314d\" -DESP_PLATFORM -DIDF_VER=\"v5.3.1\" -DMBEDTLS_CONFIG_FILE=\"mbedtls/esp_config.h\" -DSOC_MMU_PAGE_SIZE=CONFIG_MMU_PAGE_SIZE -DSOC_XTAL_FREQ_MHZ=CONFIG_XTAL_FREQ -D_GLIBCXX_HAVE_POSIX_SEMAPHORE -D_GLIBCXX_USE_POSIX_SEMAPHORE -D_GNU_SOURCE -D_POSIX_READER_WRITER_LOCKS

C_INCLUDES = -I/home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/config -I/home/betelgeuse/appdata/esp/esp-adf/esp-idf/components/esp_common/include -I/home/betelgeuse/appdata/esp/esp-adf/esp-idf/components/newlib/platform_include -I/home/betelgeuse/appdata/esp/esp-adf/esp-idf/components/freertos/config/include -I/home/betelgeuse/appdata/esp/esp-adf/esp-idf/components/freertos/config/include/freertos -I/home/betelgeuse/appdata/esp/esp-adf/esp-idf/components/freertos/config/xtensa/include -I/home/betelgeuse/appdata/esp/esp-adf/esp-idf/components/freertos/FreeRTOS-Kernel/include -I/home/betelgeuse/appdata/esp/esp-adf/esp-idf/components/freertos/FreeRTOS-Kernel/portable/xtensa/include -I/home/betelgeuse/appdata/esp/esp-adf/esp-idf/components/freertos/FreeRTOS-Kernel/portable/xtensa/include/freertos -I/home/betelgeuse/appdata/esp/esp-adf/esp-idf/components/freertos/esp_additions/include -I/home/betelgeuse/appdata/esp/esp-adf/esp-idf/components/esp_hw_support/include -I/home/betelgeuse/appdata/esp/esp-adf/esp-idf/components/esp_hw_support/include/soc -I/home/betelgeuse/appdata/esp/esp-adf/esp-idf/components/esp_hw_support/include/soc/esp32 -I/home/betelgeuse/appdata/esp/esp-adf/esp-idf/components/esp_hw_support/dma/include -I/home/betelgeuse/appdata/esp/esp-adf/esp-idf/components/esp_hw_support/ldo/include -I/home/betelgeuse/appdata/esp/esp-adf/esp-idf/components/esp_hw_support/port/esp32/. -I/home/betelgeuse/appdata/esp/esp-adf/esp-idf/components/esp_hw_support/port/esp32/include -I/home/betelgeuse/appdata/esp/esp-adf/esp-idf/components/heap/include -I/home/betelgeuse/appdata/esp/esp-adf/esp-idf/components/log/include -I/home/betelgeuse/appdata/esp/esp-adf/esp-idf/components/soc/include -I/home/betelgeuse/appdata/esp/esp-adf/esp-idf/components/soc/esp32 -I/home/betelgeuse/appdata/esp/esp-adf/esp-idf/components/soc/esp32/include -I/home/betelgeuse/appdata/esp/esp-adf/esp-idf/components/hal/platform_port/include -I/home/betelgeuse/appdata/esp/esp-adf/esp-idf/components/hal/esp32/include -I/home/betelgeuse/appdata/esp/esp-adf/esp-idf/components/hal/include -I/home/betelgeuse/appdata/esp/esp-adf/esp-idf/components/esp_rom/include -I/home/betelgeuse/appdata/esp/esp-adf/esp-idf/components/esp_rom/include/esp32 -I/home/betelgeuse/appdata/esp/esp-adf/esp-idf/components/esp_rom/esp32 -I/home/betelgeuse/appdata/esp/esp-adf/esp-idf/components/esp_system/include -I/home/betelgeuse/appdata/esp/esp-adf/esp-idf/components/esp_system/port/soc -I/home/betelgeuse/appdata/esp/esp-adf/esp-idf/components/esp_system/port/include/private -I/home/betelgeuse/appdata/esp/esp-adf/esp-idf/components/xtensa/esp32/include -I/home/betelgeuse/appdata/esp/esp-adf/esp-idf/components/xtensa/include -I/home/betelgeuse/appdata/esp/esp-adf/esp-idf/components/xtensa/deprecated_include -I/home/betelgeuse/appdata/esp/esp-adf/esp-idf/components/lwip/include -I/home/betelgeuse/appdata/esp/esp-adf/esp-idf/components/lwip/include/apps -I/home/betelgeuse/appdata/esp/esp-adf/esp-idf/components/lwip/include/apps/sntp -I/home/betelgeuse/appdata/esp/esp-adf/esp-idf/components/lwip/lwip/src/include -I/home/betelgeuse/appdata/esp/esp-adf/esp-idf/components/lwip/port/include -I/home/betelgeuse/appdata/esp/esp-adf/esp-idf/components/lwip/port/freertos/include -I/home/betelgeuse/appdata/esp/esp-adf/esp-idf/components/lwip/port/esp32xx/include -I/home/betelgeuse/appdata/esp/esp-adf/esp-idf/components/lwip/port/esp32xx/include/arch -I/home/betelgeuse/appdata/esp/esp-adf/esp-idf/components/lwip/port/esp32xx/include/sys -I/home/betelgeuse/appdata/esp/esp-adf/esp-idf/components/driver/deprecated -I/home/betelgeuse/appdata/esp/esp-adf/esp-idf/components/driver/i2c/include -I/home/betelgeuse/appdata/esp/esp-adf/esp-idf/components/driver/touch_sensor/include -I/home/betelgeuse/appdata/esp/esp-adf/esp-idf/components/driver/twai/include -I/home/betelgeuse/appdata/esp/esp-adf/esp-idf/components/driver/touch_sensor/esp32/include -I/home/betelgeuse/appdata/esp/esp-adf/esp-idf/components/esp_pm/include -I/home/betelgeuse/appdata/esp/esp-adf/esp-idf/components/esp_ringbuf/include -I/home/betelgeuse/appdata/esp/esp-adf/esp-idf/components/esp_driver_gpio/include -I/home/betelgeuse/appdata/esp/esp-adf/esp-idf/components/esp_driver_pcnt/include -I/home/betelgeuse/appdata/esp/esp-adf/esp-idf/components/esp_driver_gptimer/include -I/home/betelgeuse/appdata/esp/esp-adf/esp-idf/components/esp_driver_spi/include -I/home/betelgeuse/appdata/esp/esp-adf/esp-idf/components/esp_driver_mcpwm/include -I/home/betelgeuse/appdata/esp/esp-adf/esp-idf/components/esp_driver_ana_cmpr/include -I/home/betelgeuse/appdata/esp/esp-adf/esp-idf/components/esp_driver_i2s/include -I/home/betelgeuse/appdata/esp/esp-adf/esp-idf/components/esp_driver_sdmmc/include -I/home/betelgeuse/appdata/esp/esp-adf/esp-idf/components/sdmmc/include -I/home/betelgeuse/appdata/esp/esp-adf/esp-idf/components/esp_driver_sdspi/include -I/home/betelgeuse/appdata/esp/esp-adf/esp-idf/components/esp_driver_sdio/include -I/home/betelgeuse/appdata/esp/esp-adf/esp-idf/components/esp_driver_dac/include -I/home/betelgeuse/appdata/esp/esp-adf/esp-idf/components/esp_driver_rmt/include -I/home/betelgeuse/appdata/esp/esp-adf/esp-idf/components/esp_driver_tsens/include -I/home/betelgeuse/appdata/esp/esp-adf/esp-idf/components/esp_driver_sdm/include -I/home/betelgeuse/appdata/esp/esp-adf/esp-idf/components/esp_driver_i2c/include -I/home/betelgeuse/appdata/esp/esp-adf/esp-idf/components/esp_driver_uart/include -I/home/betelgeuse/appdata/esp/esp-adf/esp-idf/components/vfs/include -I/home/betelgeuse/appdata/esp/esp-adf/esp-idf/components/esp_driver_ledc/include -I/home/betelgeuse/appdata/esp/esp-adf/esp-idf/components/esp_driver_parlio/include -I/home/betelgeuse/appdata/esp/esp-adf/esp-idf/components/esp_driver_usb_serial_jtag/include -I/home/betelgeuse/appdata/esp/esp-adf/esp-idf/components/esp_adc/include -I/home/betelgeuse/appdata/esp/esp-adf/esp-idf/components/esp_adc/interface -I/home/betelgeuse/appdata/esp/esp-adf/esp-idf/components/esp_adc/esp32/include -I/home/betelgeuse/appdata/esp/esp-adf/esp-idf/components/esp_adc/deprecated/include -I/home/betelgeuse/appdata/esp/esp-adf/esp-idf/components/efuse/include -I/home/betelgeuse/appdata/esp/esp-adf/esp-idf/components/efuse/esp32/include -I/home/betelgeuse/appdata/esp/esp-adf/esp-idf/components/esp_http_client/include -I/home/betelgeuse/appdata/esp/esp-adf/esp-idf/components/esp_event/include -I/home/betelgeuse/appdata/esp/esp-adf/esp-idf/components/esp_http_server/include -I/home/betelgeuse/appdata/esp/esp-adf/esp-idf/components/http_parser -I/home/betelgeuse/appdata/esp/esp-adf/esp-idf/components/bootloader_support/include -I/home/betelgeuse/appdata/esp/esp-adf/esp-idf/components/bootloader_support/bootloader_flash/include -I/home/betelgeuse/appdata/esp/esp-adf/esp-idf/components/nvs_flash/include -I/home/betelgeuse/appdata/esp/esp-adf/esp-idf/components/spi_flash/include -I/home/betelgeuse/appdata/esp/esp-adf/esp-idf/components/esp_partition/include -I/home/betelgeuse/appdata/esp/esp-adf/esp-idf/components/esp_wifi/include -I/home/betelgeuse/appdata/esp/esp-adf/esp-idf/components/esp_wifi/wifi_apps/include -I/home/betelgeuse/appdata/esp/esp-adf/esp-idf/components/esp_wifi/wifi_apps/nan_app/include -I/home/betelgeuse/appdata/esp/esp-adf/esp-idf/components/esp_wifi/include/local -I/home/betelgeuse/appdata/esp/esp-adf/esp-idf/components/esp_phy/include -I/home/betelgeuse/appdata/esp/esp-adf/esp-idf/components/esp_phy/esp32/include -I/home/betelgeuse/appdata/esp/esp-adf/esp-idf/components/esp_netif/include -I/home/betelgeuse/appdata/esp/esp-adf/esp-idf/components/app_update/include -I/home/betelgeuse/appdata/esp/esp-adf/esp-idf/components/esp_app_format/include -I/home/betelgeuse/appdata/esp/esp-adf/esp-idf/components/esp_bootloader_format/include -I/home/betelgeuse/appdata/esp/esp-adf/esp-idf/components/wpa_supplicant/include -I/home/betelgeuse/appdata/esp/esp-adf/esp-idf/components/wpa_supplicant/port/include -I/home/betelgeuse/appdata/esp/esp-adf/esp-idf/components/wpa_supplicant/esp_supplicant/include -I/home/betelgeuse/appdata/esp/esp-adf/esp-idf/components/esp-tls -I/home/betelgeuse/appdata/esp/esp-adf/esp-idf/components/esp-tls/esp-tls-crypto -I/home/betelgeuse/appdata/esp/esp-adf/esp-idf/components/mbedtls/port/include -I/home/betelgeuse/appdata/esp/esp-adf/esp-idf/components/mbedtls/mbedtls/include -I/home/betelgeuse/appdata/esp/esp-adf/esp-idf/components/mbedtls/mbedtls/library -I/home/betelgeuse/appdata/esp/esp-adf/esp-idf/components/mbedtls/esp_crt_bundle/include -I/home/betelgeuse/appdata/esp/esp-adf/esp-idf/components/mbedtls/mbedtls/3rdparty/everest/include -I/home/betelgeuse/appdata/esp/esp-adf/esp-idf/components/mbedtls/mbedtls/3rdparty/p256-m -I/home/betelgeuse/appdata/esp/esp-adf/esp-idf/components/mbedtls/mbedtls/3rdparty/p256-m/p256-m -I/home/betelgeuse/appdata/esp/esp-adf/esp-idf/components/esp_https_ota/include

C_FLAGS = -mlongcalls -Wno-frame-address  -fno-builtin-memcpy -fno-builtin-memset -fno-builtin-bzero -fno-builtin-stpcpy -fno-builtin-strncpy -fdiagnostics-color=always -ffunction-sections -fdata-sections -Wall -Werror=all -Wno-error=unused-function -Wno-error=unused-variable -Wno-error=unused-but-set-variable -Wno-error=deprecated-declarations -Wextra -Wno-unused-parameter -Wno-sign-compare -Wno-enum-conversion -gdwarf-4 -ggdb -Og -fno-shrink-wrap -fmacro-prefix-map=/home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom=. -fmacro-prefix-map=/home/betelgeuse/appdata/esp/esp-adf/esp-idf=/IDF -fstrict-volatile-bitfields -fno-jump-tables -fno-tree-switch-conversion -std=gnu17 -Wno-old-style-declaration

