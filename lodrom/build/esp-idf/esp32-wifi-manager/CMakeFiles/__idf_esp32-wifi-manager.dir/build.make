# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.28

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build

# Include any dependencies generated for this target.
include esp-idf/esp32-wifi-manager/CMakeFiles/__idf_esp32-wifi-manager.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include esp-idf/esp32-wifi-manager/CMakeFiles/__idf_esp32-wifi-manager.dir/compiler_depend.make

# Include the progress variables for this target.
include esp-idf/esp32-wifi-manager/CMakeFiles/__idf_esp32-wifi-manager.dir/progress.make

# Include the compile flags for this target's objects.
include esp-idf/esp32-wifi-manager/CMakeFiles/__idf_esp32-wifi-manager.dir/flags.make

style.css.S: /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/components/esp32-wifi-manager/src/style.css
style.css.S: /home/betelgeuse/appdata/esp/esp-adf/esp-idf/tools/cmake/scripts/data_file_embed_asm.cmake
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating ../../style.css.S"
	/usr/bin/cmake -D DATA_FILE=/home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/components/esp32-wifi-manager/src/style.css -D SOURCE_FILE=/home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/style.css.S -D FILE_TYPE=BINARY -P /home/betelgeuse/appdata/esp/esp-adf/esp-idf/tools/cmake/scripts/data_file_embed_asm.cmake

code.js.S: /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/components/esp32-wifi-manager/src/code.js
code.js.S: /home/betelgeuse/appdata/esp/esp-adf/esp-idf/tools/cmake/scripts/data_file_embed_asm.cmake
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Generating ../../code.js.S"
	/usr/bin/cmake -D DATA_FILE=/home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/components/esp32-wifi-manager/src/code.js -D SOURCE_FILE=/home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/code.js.S -D FILE_TYPE=BINARY -P /home/betelgeuse/appdata/esp/esp-adf/esp-idf/tools/cmake/scripts/data_file_embed_asm.cmake

index.html.S: /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/components/esp32-wifi-manager/src/index.html
index.html.S: /home/betelgeuse/appdata/esp/esp-adf/esp-idf/tools/cmake/scripts/data_file_embed_asm.cmake
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Generating ../../index.html.S"
	/usr/bin/cmake -D DATA_FILE=/home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/components/esp32-wifi-manager/src/index.html -D SOURCE_FILE=/home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/index.html.S -D FILE_TYPE=BINARY -P /home/betelgeuse/appdata/esp/esp-adf/esp-idf/tools/cmake/scripts/data_file_embed_asm.cmake

esp-idf/esp32-wifi-manager/CMakeFiles/__idf_esp32-wifi-manager.dir/src/dns_server.c.obj: esp-idf/esp32-wifi-manager/CMakeFiles/__idf_esp32-wifi-manager.dir/flags.make
esp-idf/esp32-wifi-manager/CMakeFiles/__idf_esp32-wifi-manager.dir/src/dns_server.c.obj: /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/components/esp32-wifi-manager/src/dns_server.c
esp-idf/esp32-wifi-manager/CMakeFiles/__idf_esp32-wifi-manager.dir/src/dns_server.c.obj: esp-idf/esp32-wifi-manager/CMakeFiles/__idf_esp32-wifi-manager.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object esp-idf/esp32-wifi-manager/CMakeFiles/__idf_esp32-wifi-manager.dir/src/dns_server.c.obj"
	cd /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/esp-idf/esp32-wifi-manager && /home/betelgeuse/.espressif/tools/xtensa-esp-elf/esp-13.2.0_20240530/xtensa-esp-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT esp-idf/esp32-wifi-manager/CMakeFiles/__idf_esp32-wifi-manager.dir/src/dns_server.c.obj -MF CMakeFiles/__idf_esp32-wifi-manager.dir/src/dns_server.c.obj.d -o CMakeFiles/__idf_esp32-wifi-manager.dir/src/dns_server.c.obj -c /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/components/esp32-wifi-manager/src/dns_server.c

esp-idf/esp32-wifi-manager/CMakeFiles/__idf_esp32-wifi-manager.dir/src/dns_server.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/__idf_esp32-wifi-manager.dir/src/dns_server.c.i"
	cd /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/esp-idf/esp32-wifi-manager && /home/betelgeuse/.espressif/tools/xtensa-esp-elf/esp-13.2.0_20240530/xtensa-esp-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/components/esp32-wifi-manager/src/dns_server.c > CMakeFiles/__idf_esp32-wifi-manager.dir/src/dns_server.c.i

esp-idf/esp32-wifi-manager/CMakeFiles/__idf_esp32-wifi-manager.dir/src/dns_server.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/__idf_esp32-wifi-manager.dir/src/dns_server.c.s"
	cd /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/esp-idf/esp32-wifi-manager && /home/betelgeuse/.espressif/tools/xtensa-esp-elf/esp-13.2.0_20240530/xtensa-esp-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/components/esp32-wifi-manager/src/dns_server.c -o CMakeFiles/__idf_esp32-wifi-manager.dir/src/dns_server.c.s

esp-idf/esp32-wifi-manager/CMakeFiles/__idf_esp32-wifi-manager.dir/src/http_app.c.obj: esp-idf/esp32-wifi-manager/CMakeFiles/__idf_esp32-wifi-manager.dir/flags.make
esp-idf/esp32-wifi-manager/CMakeFiles/__idf_esp32-wifi-manager.dir/src/http_app.c.obj: /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/components/esp32-wifi-manager/src/http_app.c
esp-idf/esp32-wifi-manager/CMakeFiles/__idf_esp32-wifi-manager.dir/src/http_app.c.obj: esp-idf/esp32-wifi-manager/CMakeFiles/__idf_esp32-wifi-manager.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object esp-idf/esp32-wifi-manager/CMakeFiles/__idf_esp32-wifi-manager.dir/src/http_app.c.obj"
	cd /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/esp-idf/esp32-wifi-manager && /home/betelgeuse/.espressif/tools/xtensa-esp-elf/esp-13.2.0_20240530/xtensa-esp-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT esp-idf/esp32-wifi-manager/CMakeFiles/__idf_esp32-wifi-manager.dir/src/http_app.c.obj -MF CMakeFiles/__idf_esp32-wifi-manager.dir/src/http_app.c.obj.d -o CMakeFiles/__idf_esp32-wifi-manager.dir/src/http_app.c.obj -c /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/components/esp32-wifi-manager/src/http_app.c

esp-idf/esp32-wifi-manager/CMakeFiles/__idf_esp32-wifi-manager.dir/src/http_app.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/__idf_esp32-wifi-manager.dir/src/http_app.c.i"
	cd /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/esp-idf/esp32-wifi-manager && /home/betelgeuse/.espressif/tools/xtensa-esp-elf/esp-13.2.0_20240530/xtensa-esp-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/components/esp32-wifi-manager/src/http_app.c > CMakeFiles/__idf_esp32-wifi-manager.dir/src/http_app.c.i

esp-idf/esp32-wifi-manager/CMakeFiles/__idf_esp32-wifi-manager.dir/src/http_app.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/__idf_esp32-wifi-manager.dir/src/http_app.c.s"
	cd /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/esp-idf/esp32-wifi-manager && /home/betelgeuse/.espressif/tools/xtensa-esp-elf/esp-13.2.0_20240530/xtensa-esp-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/components/esp32-wifi-manager/src/http_app.c -o CMakeFiles/__idf_esp32-wifi-manager.dir/src/http_app.c.s

esp-idf/esp32-wifi-manager/CMakeFiles/__idf_esp32-wifi-manager.dir/src/json.c.obj: esp-idf/esp32-wifi-manager/CMakeFiles/__idf_esp32-wifi-manager.dir/flags.make
esp-idf/esp32-wifi-manager/CMakeFiles/__idf_esp32-wifi-manager.dir/src/json.c.obj: /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/components/esp32-wifi-manager/src/json.c
esp-idf/esp32-wifi-manager/CMakeFiles/__idf_esp32-wifi-manager.dir/src/json.c.obj: esp-idf/esp32-wifi-manager/CMakeFiles/__idf_esp32-wifi-manager.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object esp-idf/esp32-wifi-manager/CMakeFiles/__idf_esp32-wifi-manager.dir/src/json.c.obj"
	cd /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/esp-idf/esp32-wifi-manager && /home/betelgeuse/.espressif/tools/xtensa-esp-elf/esp-13.2.0_20240530/xtensa-esp-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT esp-idf/esp32-wifi-manager/CMakeFiles/__idf_esp32-wifi-manager.dir/src/json.c.obj -MF CMakeFiles/__idf_esp32-wifi-manager.dir/src/json.c.obj.d -o CMakeFiles/__idf_esp32-wifi-manager.dir/src/json.c.obj -c /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/components/esp32-wifi-manager/src/json.c

esp-idf/esp32-wifi-manager/CMakeFiles/__idf_esp32-wifi-manager.dir/src/json.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/__idf_esp32-wifi-manager.dir/src/json.c.i"
	cd /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/esp-idf/esp32-wifi-manager && /home/betelgeuse/.espressif/tools/xtensa-esp-elf/esp-13.2.0_20240530/xtensa-esp-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/components/esp32-wifi-manager/src/json.c > CMakeFiles/__idf_esp32-wifi-manager.dir/src/json.c.i

esp-idf/esp32-wifi-manager/CMakeFiles/__idf_esp32-wifi-manager.dir/src/json.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/__idf_esp32-wifi-manager.dir/src/json.c.s"
	cd /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/esp-idf/esp32-wifi-manager && /home/betelgeuse/.espressif/tools/xtensa-esp-elf/esp-13.2.0_20240530/xtensa-esp-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/components/esp32-wifi-manager/src/json.c -o CMakeFiles/__idf_esp32-wifi-manager.dir/src/json.c.s

esp-idf/esp32-wifi-manager/CMakeFiles/__idf_esp32-wifi-manager.dir/src/nvs_sync.c.obj: esp-idf/esp32-wifi-manager/CMakeFiles/__idf_esp32-wifi-manager.dir/flags.make
esp-idf/esp32-wifi-manager/CMakeFiles/__idf_esp32-wifi-manager.dir/src/nvs_sync.c.obj: /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/components/esp32-wifi-manager/src/nvs_sync.c
esp-idf/esp32-wifi-manager/CMakeFiles/__idf_esp32-wifi-manager.dir/src/nvs_sync.c.obj: esp-idf/esp32-wifi-manager/CMakeFiles/__idf_esp32-wifi-manager.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object esp-idf/esp32-wifi-manager/CMakeFiles/__idf_esp32-wifi-manager.dir/src/nvs_sync.c.obj"
	cd /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/esp-idf/esp32-wifi-manager && /home/betelgeuse/.espressif/tools/xtensa-esp-elf/esp-13.2.0_20240530/xtensa-esp-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT esp-idf/esp32-wifi-manager/CMakeFiles/__idf_esp32-wifi-manager.dir/src/nvs_sync.c.obj -MF CMakeFiles/__idf_esp32-wifi-manager.dir/src/nvs_sync.c.obj.d -o CMakeFiles/__idf_esp32-wifi-manager.dir/src/nvs_sync.c.obj -c /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/components/esp32-wifi-manager/src/nvs_sync.c

esp-idf/esp32-wifi-manager/CMakeFiles/__idf_esp32-wifi-manager.dir/src/nvs_sync.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/__idf_esp32-wifi-manager.dir/src/nvs_sync.c.i"
	cd /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/esp-idf/esp32-wifi-manager && /home/betelgeuse/.espressif/tools/xtensa-esp-elf/esp-13.2.0_20240530/xtensa-esp-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/components/esp32-wifi-manager/src/nvs_sync.c > CMakeFiles/__idf_esp32-wifi-manager.dir/src/nvs_sync.c.i

esp-idf/esp32-wifi-manager/CMakeFiles/__idf_esp32-wifi-manager.dir/src/nvs_sync.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/__idf_esp32-wifi-manager.dir/src/nvs_sync.c.s"
	cd /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/esp-idf/esp32-wifi-manager && /home/betelgeuse/.espressif/tools/xtensa-esp-elf/esp-13.2.0_20240530/xtensa-esp-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/components/esp32-wifi-manager/src/nvs_sync.c -o CMakeFiles/__idf_esp32-wifi-manager.dir/src/nvs_sync.c.s

esp-idf/esp32-wifi-manager/CMakeFiles/__idf_esp32-wifi-manager.dir/src/wifi_manager.c.obj: esp-idf/esp32-wifi-manager/CMakeFiles/__idf_esp32-wifi-manager.dir/flags.make
esp-idf/esp32-wifi-manager/CMakeFiles/__idf_esp32-wifi-manager.dir/src/wifi_manager.c.obj: /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/components/esp32-wifi-manager/src/wifi_manager.c
esp-idf/esp32-wifi-manager/CMakeFiles/__idf_esp32-wifi-manager.dir/src/wifi_manager.c.obj: esp-idf/esp32-wifi-manager/CMakeFiles/__idf_esp32-wifi-manager.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building C object esp-idf/esp32-wifi-manager/CMakeFiles/__idf_esp32-wifi-manager.dir/src/wifi_manager.c.obj"
	cd /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/esp-idf/esp32-wifi-manager && /home/betelgeuse/.espressif/tools/xtensa-esp-elf/esp-13.2.0_20240530/xtensa-esp-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT esp-idf/esp32-wifi-manager/CMakeFiles/__idf_esp32-wifi-manager.dir/src/wifi_manager.c.obj -MF CMakeFiles/__idf_esp32-wifi-manager.dir/src/wifi_manager.c.obj.d -o CMakeFiles/__idf_esp32-wifi-manager.dir/src/wifi_manager.c.obj -c /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/components/esp32-wifi-manager/src/wifi_manager.c

esp-idf/esp32-wifi-manager/CMakeFiles/__idf_esp32-wifi-manager.dir/src/wifi_manager.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/__idf_esp32-wifi-manager.dir/src/wifi_manager.c.i"
	cd /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/esp-idf/esp32-wifi-manager && /home/betelgeuse/.espressif/tools/xtensa-esp-elf/esp-13.2.0_20240530/xtensa-esp-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/components/esp32-wifi-manager/src/wifi_manager.c > CMakeFiles/__idf_esp32-wifi-manager.dir/src/wifi_manager.c.i

esp-idf/esp32-wifi-manager/CMakeFiles/__idf_esp32-wifi-manager.dir/src/wifi_manager.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/__idf_esp32-wifi-manager.dir/src/wifi_manager.c.s"
	cd /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/esp-idf/esp32-wifi-manager && /home/betelgeuse/.espressif/tools/xtensa-esp-elf/esp-13.2.0_20240530/xtensa-esp-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/components/esp32-wifi-manager/src/wifi_manager.c -o CMakeFiles/__idf_esp32-wifi-manager.dir/src/wifi_manager.c.s

esp-idf/esp32-wifi-manager/CMakeFiles/__idf_esp32-wifi-manager.dir/__/__/style.css.S.obj: esp-idf/esp32-wifi-manager/CMakeFiles/__idf_esp32-wifi-manager.dir/flags.make
esp-idf/esp32-wifi-manager/CMakeFiles/__idf_esp32-wifi-manager.dir/__/__/style.css.S.obj: style.css.S
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building ASM object esp-idf/esp32-wifi-manager/CMakeFiles/__idf_esp32-wifi-manager.dir/__/__/style.css.S.obj"
	cd /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/esp-idf/esp32-wifi-manager && /home/betelgeuse/.espressif/tools/xtensa-esp-elf/esp-13.2.0_20240530/xtensa-esp-elf/bin/xtensa-esp32-elf-gcc $(ASM_DEFINES) $(ASM_INCLUDES) $(ASM_FLAGS) -o CMakeFiles/__idf_esp32-wifi-manager.dir/__/__/style.css.S.obj -c /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/style.css.S

esp-idf/esp32-wifi-manager/CMakeFiles/__idf_esp32-wifi-manager.dir/__/__/style.css.S.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing ASM source to CMakeFiles/__idf_esp32-wifi-manager.dir/__/__/style.css.S.i"
	cd /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/esp-idf/esp32-wifi-manager && /home/betelgeuse/.espressif/tools/xtensa-esp-elf/esp-13.2.0_20240530/xtensa-esp-elf/bin/xtensa-esp32-elf-gcc $(ASM_DEFINES) $(ASM_INCLUDES) $(ASM_FLAGS) -E /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/style.css.S > CMakeFiles/__idf_esp32-wifi-manager.dir/__/__/style.css.S.i

esp-idf/esp32-wifi-manager/CMakeFiles/__idf_esp32-wifi-manager.dir/__/__/style.css.S.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling ASM source to assembly CMakeFiles/__idf_esp32-wifi-manager.dir/__/__/style.css.S.s"
	cd /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/esp-idf/esp32-wifi-manager && /home/betelgeuse/.espressif/tools/xtensa-esp-elf/esp-13.2.0_20240530/xtensa-esp-elf/bin/xtensa-esp32-elf-gcc $(ASM_DEFINES) $(ASM_INCLUDES) $(ASM_FLAGS) -S /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/style.css.S -o CMakeFiles/__idf_esp32-wifi-manager.dir/__/__/style.css.S.s

esp-idf/esp32-wifi-manager/CMakeFiles/__idf_esp32-wifi-manager.dir/__/__/code.js.S.obj: esp-idf/esp32-wifi-manager/CMakeFiles/__idf_esp32-wifi-manager.dir/flags.make
esp-idf/esp32-wifi-manager/CMakeFiles/__idf_esp32-wifi-manager.dir/__/__/code.js.S.obj: code.js.S
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building ASM object esp-idf/esp32-wifi-manager/CMakeFiles/__idf_esp32-wifi-manager.dir/__/__/code.js.S.obj"
	cd /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/esp-idf/esp32-wifi-manager && /home/betelgeuse/.espressif/tools/xtensa-esp-elf/esp-13.2.0_20240530/xtensa-esp-elf/bin/xtensa-esp32-elf-gcc $(ASM_DEFINES) $(ASM_INCLUDES) $(ASM_FLAGS) -o CMakeFiles/__idf_esp32-wifi-manager.dir/__/__/code.js.S.obj -c /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/code.js.S

esp-idf/esp32-wifi-manager/CMakeFiles/__idf_esp32-wifi-manager.dir/__/__/code.js.S.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing ASM source to CMakeFiles/__idf_esp32-wifi-manager.dir/__/__/code.js.S.i"
	cd /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/esp-idf/esp32-wifi-manager && /home/betelgeuse/.espressif/tools/xtensa-esp-elf/esp-13.2.0_20240530/xtensa-esp-elf/bin/xtensa-esp32-elf-gcc $(ASM_DEFINES) $(ASM_INCLUDES) $(ASM_FLAGS) -E /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/code.js.S > CMakeFiles/__idf_esp32-wifi-manager.dir/__/__/code.js.S.i

esp-idf/esp32-wifi-manager/CMakeFiles/__idf_esp32-wifi-manager.dir/__/__/code.js.S.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling ASM source to assembly CMakeFiles/__idf_esp32-wifi-manager.dir/__/__/code.js.S.s"
	cd /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/esp-idf/esp32-wifi-manager && /home/betelgeuse/.espressif/tools/xtensa-esp-elf/esp-13.2.0_20240530/xtensa-esp-elf/bin/xtensa-esp32-elf-gcc $(ASM_DEFINES) $(ASM_INCLUDES) $(ASM_FLAGS) -S /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/code.js.S -o CMakeFiles/__idf_esp32-wifi-manager.dir/__/__/code.js.S.s

esp-idf/esp32-wifi-manager/CMakeFiles/__idf_esp32-wifi-manager.dir/__/__/index.html.S.obj: esp-idf/esp32-wifi-manager/CMakeFiles/__idf_esp32-wifi-manager.dir/flags.make
esp-idf/esp32-wifi-manager/CMakeFiles/__idf_esp32-wifi-manager.dir/__/__/index.html.S.obj: index.html.S
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building ASM object esp-idf/esp32-wifi-manager/CMakeFiles/__idf_esp32-wifi-manager.dir/__/__/index.html.S.obj"
	cd /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/esp-idf/esp32-wifi-manager && /home/betelgeuse/.espressif/tools/xtensa-esp-elf/esp-13.2.0_20240530/xtensa-esp-elf/bin/xtensa-esp32-elf-gcc $(ASM_DEFINES) $(ASM_INCLUDES) $(ASM_FLAGS) -o CMakeFiles/__idf_esp32-wifi-manager.dir/__/__/index.html.S.obj -c /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/index.html.S

esp-idf/esp32-wifi-manager/CMakeFiles/__idf_esp32-wifi-manager.dir/__/__/index.html.S.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing ASM source to CMakeFiles/__idf_esp32-wifi-manager.dir/__/__/index.html.S.i"
	cd /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/esp-idf/esp32-wifi-manager && /home/betelgeuse/.espressif/tools/xtensa-esp-elf/esp-13.2.0_20240530/xtensa-esp-elf/bin/xtensa-esp32-elf-gcc $(ASM_DEFINES) $(ASM_INCLUDES) $(ASM_FLAGS) -E /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/index.html.S > CMakeFiles/__idf_esp32-wifi-manager.dir/__/__/index.html.S.i

esp-idf/esp32-wifi-manager/CMakeFiles/__idf_esp32-wifi-manager.dir/__/__/index.html.S.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling ASM source to assembly CMakeFiles/__idf_esp32-wifi-manager.dir/__/__/index.html.S.s"
	cd /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/esp-idf/esp32-wifi-manager && /home/betelgeuse/.espressif/tools/xtensa-esp-elf/esp-13.2.0_20240530/xtensa-esp-elf/bin/xtensa-esp32-elf-gcc $(ASM_DEFINES) $(ASM_INCLUDES) $(ASM_FLAGS) -S /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/index.html.S -o CMakeFiles/__idf_esp32-wifi-manager.dir/__/__/index.html.S.s

# Object files for target __idf_esp32-wifi-manager
__idf_esp32__wifi__manager_OBJECTS = \
"CMakeFiles/__idf_esp32-wifi-manager.dir/src/dns_server.c.obj" \
"CMakeFiles/__idf_esp32-wifi-manager.dir/src/http_app.c.obj" \
"CMakeFiles/__idf_esp32-wifi-manager.dir/src/json.c.obj" \
"CMakeFiles/__idf_esp32-wifi-manager.dir/src/nvs_sync.c.obj" \
"CMakeFiles/__idf_esp32-wifi-manager.dir/src/wifi_manager.c.obj" \
"CMakeFiles/__idf_esp32-wifi-manager.dir/__/__/style.css.S.obj" \
"CMakeFiles/__idf_esp32-wifi-manager.dir/__/__/code.js.S.obj" \
"CMakeFiles/__idf_esp32-wifi-manager.dir/__/__/index.html.S.obj"

# External object files for target __idf_esp32-wifi-manager
__idf_esp32__wifi__manager_EXTERNAL_OBJECTS =

esp-idf/esp32-wifi-manager/libesp32-wifi-manager.a: esp-idf/esp32-wifi-manager/CMakeFiles/__idf_esp32-wifi-manager.dir/src/dns_server.c.obj
esp-idf/esp32-wifi-manager/libesp32-wifi-manager.a: esp-idf/esp32-wifi-manager/CMakeFiles/__idf_esp32-wifi-manager.dir/src/http_app.c.obj
esp-idf/esp32-wifi-manager/libesp32-wifi-manager.a: esp-idf/esp32-wifi-manager/CMakeFiles/__idf_esp32-wifi-manager.dir/src/json.c.obj
esp-idf/esp32-wifi-manager/libesp32-wifi-manager.a: esp-idf/esp32-wifi-manager/CMakeFiles/__idf_esp32-wifi-manager.dir/src/nvs_sync.c.obj
esp-idf/esp32-wifi-manager/libesp32-wifi-manager.a: esp-idf/esp32-wifi-manager/CMakeFiles/__idf_esp32-wifi-manager.dir/src/wifi_manager.c.obj
esp-idf/esp32-wifi-manager/libesp32-wifi-manager.a: esp-idf/esp32-wifi-manager/CMakeFiles/__idf_esp32-wifi-manager.dir/__/__/style.css.S.obj
esp-idf/esp32-wifi-manager/libesp32-wifi-manager.a: esp-idf/esp32-wifi-manager/CMakeFiles/__idf_esp32-wifi-manager.dir/__/__/code.js.S.obj
esp-idf/esp32-wifi-manager/libesp32-wifi-manager.a: esp-idf/esp32-wifi-manager/CMakeFiles/__idf_esp32-wifi-manager.dir/__/__/index.html.S.obj
esp-idf/esp32-wifi-manager/libesp32-wifi-manager.a: esp-idf/esp32-wifi-manager/CMakeFiles/__idf_esp32-wifi-manager.dir/build.make
esp-idf/esp32-wifi-manager/libesp32-wifi-manager.a: esp-idf/esp32-wifi-manager/CMakeFiles/__idf_esp32-wifi-manager.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Linking C static library libesp32-wifi-manager.a"
	cd /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/esp-idf/esp32-wifi-manager && $(CMAKE_COMMAND) -P CMakeFiles/__idf_esp32-wifi-manager.dir/cmake_clean_target.cmake
	cd /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/esp-idf/esp32-wifi-manager && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/__idf_esp32-wifi-manager.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
esp-idf/esp32-wifi-manager/CMakeFiles/__idf_esp32-wifi-manager.dir/build: esp-idf/esp32-wifi-manager/libesp32-wifi-manager.a
.PHONY : esp-idf/esp32-wifi-manager/CMakeFiles/__idf_esp32-wifi-manager.dir/build

esp-idf/esp32-wifi-manager/CMakeFiles/__idf_esp32-wifi-manager.dir/clean:
	cd /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/esp-idf/esp32-wifi-manager && $(CMAKE_COMMAND) -P CMakeFiles/__idf_esp32-wifi-manager.dir/cmake_clean.cmake
.PHONY : esp-idf/esp32-wifi-manager/CMakeFiles/__idf_esp32-wifi-manager.dir/clean

esp-idf/esp32-wifi-manager/CMakeFiles/__idf_esp32-wifi-manager.dir/depend: code.js.S
esp-idf/esp32-wifi-manager/CMakeFiles/__idf_esp32-wifi-manager.dir/depend: index.html.S
esp-idf/esp32-wifi-manager/CMakeFiles/__idf_esp32-wifi-manager.dir/depend: style.css.S
	cd /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/components/esp32-wifi-manager /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/esp-idf/esp32-wifi-manager /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/esp-idf/esp32-wifi-manager/CMakeFiles/__idf_esp32-wifi-manager.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : esp-idf/esp32-wifi-manager/CMakeFiles/__idf_esp32-wifi-manager.dir/depend

