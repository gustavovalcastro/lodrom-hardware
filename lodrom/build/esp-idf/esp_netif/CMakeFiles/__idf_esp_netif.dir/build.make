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
include esp-idf/esp_netif/CMakeFiles/__idf_esp_netif.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include esp-idf/esp_netif/CMakeFiles/__idf_esp_netif.dir/compiler_depend.make

# Include the progress variables for this target.
include esp-idf/esp_netif/CMakeFiles/__idf_esp_netif.dir/progress.make

# Include the compile flags for this target's objects.
include esp-idf/esp_netif/CMakeFiles/__idf_esp_netif.dir/flags.make

esp-idf/esp_netif/CMakeFiles/__idf_esp_netif.dir/esp_netif_handlers.c.obj: esp-idf/esp_netif/CMakeFiles/__idf_esp_netif.dir/flags.make
esp-idf/esp_netif/CMakeFiles/__idf_esp_netif.dir/esp_netif_handlers.c.obj: /home/betelgeuse/appdata/esp/esp-adf/esp-idf/components/esp_netif/esp_netif_handlers.c
esp-idf/esp_netif/CMakeFiles/__idf_esp_netif.dir/esp_netif_handlers.c.obj: esp-idf/esp_netif/CMakeFiles/__idf_esp_netif.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object esp-idf/esp_netif/CMakeFiles/__idf_esp_netif.dir/esp_netif_handlers.c.obj"
	cd /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/esp-idf/esp_netif && /home/betelgeuse/.espressif/tools/xtensa-esp-elf/esp-13.2.0_20240530/xtensa-esp-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT esp-idf/esp_netif/CMakeFiles/__idf_esp_netif.dir/esp_netif_handlers.c.obj -MF CMakeFiles/__idf_esp_netif.dir/esp_netif_handlers.c.obj.d -o CMakeFiles/__idf_esp_netif.dir/esp_netif_handlers.c.obj -c /home/betelgeuse/appdata/esp/esp-adf/esp-idf/components/esp_netif/esp_netif_handlers.c

esp-idf/esp_netif/CMakeFiles/__idf_esp_netif.dir/esp_netif_handlers.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/__idf_esp_netif.dir/esp_netif_handlers.c.i"
	cd /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/esp-idf/esp_netif && /home/betelgeuse/.espressif/tools/xtensa-esp-elf/esp-13.2.0_20240530/xtensa-esp-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/betelgeuse/appdata/esp/esp-adf/esp-idf/components/esp_netif/esp_netif_handlers.c > CMakeFiles/__idf_esp_netif.dir/esp_netif_handlers.c.i

esp-idf/esp_netif/CMakeFiles/__idf_esp_netif.dir/esp_netif_handlers.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/__idf_esp_netif.dir/esp_netif_handlers.c.s"
	cd /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/esp-idf/esp_netif && /home/betelgeuse/.espressif/tools/xtensa-esp-elf/esp-13.2.0_20240530/xtensa-esp-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/betelgeuse/appdata/esp/esp-adf/esp-idf/components/esp_netif/esp_netif_handlers.c -o CMakeFiles/__idf_esp_netif.dir/esp_netif_handlers.c.s

esp-idf/esp_netif/CMakeFiles/__idf_esp_netif.dir/esp_netif_objects.c.obj: esp-idf/esp_netif/CMakeFiles/__idf_esp_netif.dir/flags.make
esp-idf/esp_netif/CMakeFiles/__idf_esp_netif.dir/esp_netif_objects.c.obj: /home/betelgeuse/appdata/esp/esp-adf/esp-idf/components/esp_netif/esp_netif_objects.c
esp-idf/esp_netif/CMakeFiles/__idf_esp_netif.dir/esp_netif_objects.c.obj: esp-idf/esp_netif/CMakeFiles/__idf_esp_netif.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object esp-idf/esp_netif/CMakeFiles/__idf_esp_netif.dir/esp_netif_objects.c.obj"
	cd /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/esp-idf/esp_netif && /home/betelgeuse/.espressif/tools/xtensa-esp-elf/esp-13.2.0_20240530/xtensa-esp-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT esp-idf/esp_netif/CMakeFiles/__idf_esp_netif.dir/esp_netif_objects.c.obj -MF CMakeFiles/__idf_esp_netif.dir/esp_netif_objects.c.obj.d -o CMakeFiles/__idf_esp_netif.dir/esp_netif_objects.c.obj -c /home/betelgeuse/appdata/esp/esp-adf/esp-idf/components/esp_netif/esp_netif_objects.c

esp-idf/esp_netif/CMakeFiles/__idf_esp_netif.dir/esp_netif_objects.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/__idf_esp_netif.dir/esp_netif_objects.c.i"
	cd /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/esp-idf/esp_netif && /home/betelgeuse/.espressif/tools/xtensa-esp-elf/esp-13.2.0_20240530/xtensa-esp-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/betelgeuse/appdata/esp/esp-adf/esp-idf/components/esp_netif/esp_netif_objects.c > CMakeFiles/__idf_esp_netif.dir/esp_netif_objects.c.i

esp-idf/esp_netif/CMakeFiles/__idf_esp_netif.dir/esp_netif_objects.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/__idf_esp_netif.dir/esp_netif_objects.c.s"
	cd /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/esp-idf/esp_netif && /home/betelgeuse/.espressif/tools/xtensa-esp-elf/esp-13.2.0_20240530/xtensa-esp-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/betelgeuse/appdata/esp/esp-adf/esp-idf/components/esp_netif/esp_netif_objects.c -o CMakeFiles/__idf_esp_netif.dir/esp_netif_objects.c.s

esp-idf/esp_netif/CMakeFiles/__idf_esp_netif.dir/esp_netif_defaults.c.obj: esp-idf/esp_netif/CMakeFiles/__idf_esp_netif.dir/flags.make
esp-idf/esp_netif/CMakeFiles/__idf_esp_netif.dir/esp_netif_defaults.c.obj: /home/betelgeuse/appdata/esp/esp-adf/esp-idf/components/esp_netif/esp_netif_defaults.c
esp-idf/esp_netif/CMakeFiles/__idf_esp_netif.dir/esp_netif_defaults.c.obj: esp-idf/esp_netif/CMakeFiles/__idf_esp_netif.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object esp-idf/esp_netif/CMakeFiles/__idf_esp_netif.dir/esp_netif_defaults.c.obj"
	cd /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/esp-idf/esp_netif && /home/betelgeuse/.espressif/tools/xtensa-esp-elf/esp-13.2.0_20240530/xtensa-esp-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT esp-idf/esp_netif/CMakeFiles/__idf_esp_netif.dir/esp_netif_defaults.c.obj -MF CMakeFiles/__idf_esp_netif.dir/esp_netif_defaults.c.obj.d -o CMakeFiles/__idf_esp_netif.dir/esp_netif_defaults.c.obj -c /home/betelgeuse/appdata/esp/esp-adf/esp-idf/components/esp_netif/esp_netif_defaults.c

esp-idf/esp_netif/CMakeFiles/__idf_esp_netif.dir/esp_netif_defaults.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/__idf_esp_netif.dir/esp_netif_defaults.c.i"
	cd /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/esp-idf/esp_netif && /home/betelgeuse/.espressif/tools/xtensa-esp-elf/esp-13.2.0_20240530/xtensa-esp-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/betelgeuse/appdata/esp/esp-adf/esp-idf/components/esp_netif/esp_netif_defaults.c > CMakeFiles/__idf_esp_netif.dir/esp_netif_defaults.c.i

esp-idf/esp_netif/CMakeFiles/__idf_esp_netif.dir/esp_netif_defaults.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/__idf_esp_netif.dir/esp_netif_defaults.c.s"
	cd /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/esp-idf/esp_netif && /home/betelgeuse/.espressif/tools/xtensa-esp-elf/esp-13.2.0_20240530/xtensa-esp-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/betelgeuse/appdata/esp/esp-adf/esp-idf/components/esp_netif/esp_netif_defaults.c -o CMakeFiles/__idf_esp_netif.dir/esp_netif_defaults.c.s

esp-idf/esp_netif/CMakeFiles/__idf_esp_netif.dir/lwip/esp_netif_lwip.c.obj: esp-idf/esp_netif/CMakeFiles/__idf_esp_netif.dir/flags.make
esp-idf/esp_netif/CMakeFiles/__idf_esp_netif.dir/lwip/esp_netif_lwip.c.obj: /home/betelgeuse/appdata/esp/esp-adf/esp-idf/components/esp_netif/lwip/esp_netif_lwip.c
esp-idf/esp_netif/CMakeFiles/__idf_esp_netif.dir/lwip/esp_netif_lwip.c.obj: esp-idf/esp_netif/CMakeFiles/__idf_esp_netif.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object esp-idf/esp_netif/CMakeFiles/__idf_esp_netif.dir/lwip/esp_netif_lwip.c.obj"
	cd /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/esp-idf/esp_netif && /home/betelgeuse/.espressif/tools/xtensa-esp-elf/esp-13.2.0_20240530/xtensa-esp-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT esp-idf/esp_netif/CMakeFiles/__idf_esp_netif.dir/lwip/esp_netif_lwip.c.obj -MF CMakeFiles/__idf_esp_netif.dir/lwip/esp_netif_lwip.c.obj.d -o CMakeFiles/__idf_esp_netif.dir/lwip/esp_netif_lwip.c.obj -c /home/betelgeuse/appdata/esp/esp-adf/esp-idf/components/esp_netif/lwip/esp_netif_lwip.c

esp-idf/esp_netif/CMakeFiles/__idf_esp_netif.dir/lwip/esp_netif_lwip.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/__idf_esp_netif.dir/lwip/esp_netif_lwip.c.i"
	cd /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/esp-idf/esp_netif && /home/betelgeuse/.espressif/tools/xtensa-esp-elf/esp-13.2.0_20240530/xtensa-esp-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/betelgeuse/appdata/esp/esp-adf/esp-idf/components/esp_netif/lwip/esp_netif_lwip.c > CMakeFiles/__idf_esp_netif.dir/lwip/esp_netif_lwip.c.i

esp-idf/esp_netif/CMakeFiles/__idf_esp_netif.dir/lwip/esp_netif_lwip.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/__idf_esp_netif.dir/lwip/esp_netif_lwip.c.s"
	cd /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/esp-idf/esp_netif && /home/betelgeuse/.espressif/tools/xtensa-esp-elf/esp-13.2.0_20240530/xtensa-esp-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/betelgeuse/appdata/esp/esp-adf/esp-idf/components/esp_netif/lwip/esp_netif_lwip.c -o CMakeFiles/__idf_esp_netif.dir/lwip/esp_netif_lwip.c.s

esp-idf/esp_netif/CMakeFiles/__idf_esp_netif.dir/lwip/esp_netif_sntp.c.obj: esp-idf/esp_netif/CMakeFiles/__idf_esp_netif.dir/flags.make
esp-idf/esp_netif/CMakeFiles/__idf_esp_netif.dir/lwip/esp_netif_sntp.c.obj: /home/betelgeuse/appdata/esp/esp-adf/esp-idf/components/esp_netif/lwip/esp_netif_sntp.c
esp-idf/esp_netif/CMakeFiles/__idf_esp_netif.dir/lwip/esp_netif_sntp.c.obj: esp-idf/esp_netif/CMakeFiles/__idf_esp_netif.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object esp-idf/esp_netif/CMakeFiles/__idf_esp_netif.dir/lwip/esp_netif_sntp.c.obj"
	cd /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/esp-idf/esp_netif && /home/betelgeuse/.espressif/tools/xtensa-esp-elf/esp-13.2.0_20240530/xtensa-esp-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT esp-idf/esp_netif/CMakeFiles/__idf_esp_netif.dir/lwip/esp_netif_sntp.c.obj -MF CMakeFiles/__idf_esp_netif.dir/lwip/esp_netif_sntp.c.obj.d -o CMakeFiles/__idf_esp_netif.dir/lwip/esp_netif_sntp.c.obj -c /home/betelgeuse/appdata/esp/esp-adf/esp-idf/components/esp_netif/lwip/esp_netif_sntp.c

esp-idf/esp_netif/CMakeFiles/__idf_esp_netif.dir/lwip/esp_netif_sntp.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/__idf_esp_netif.dir/lwip/esp_netif_sntp.c.i"
	cd /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/esp-idf/esp_netif && /home/betelgeuse/.espressif/tools/xtensa-esp-elf/esp-13.2.0_20240530/xtensa-esp-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/betelgeuse/appdata/esp/esp-adf/esp-idf/components/esp_netif/lwip/esp_netif_sntp.c > CMakeFiles/__idf_esp_netif.dir/lwip/esp_netif_sntp.c.i

esp-idf/esp_netif/CMakeFiles/__idf_esp_netif.dir/lwip/esp_netif_sntp.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/__idf_esp_netif.dir/lwip/esp_netif_sntp.c.s"
	cd /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/esp-idf/esp_netif && /home/betelgeuse/.espressif/tools/xtensa-esp-elf/esp-13.2.0_20240530/xtensa-esp-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/betelgeuse/appdata/esp/esp-adf/esp-idf/components/esp_netif/lwip/esp_netif_sntp.c -o CMakeFiles/__idf_esp_netif.dir/lwip/esp_netif_sntp.c.s

esp-idf/esp_netif/CMakeFiles/__idf_esp_netif.dir/lwip/esp_netif_lwip_defaults.c.obj: esp-idf/esp_netif/CMakeFiles/__idf_esp_netif.dir/flags.make
esp-idf/esp_netif/CMakeFiles/__idf_esp_netif.dir/lwip/esp_netif_lwip_defaults.c.obj: /home/betelgeuse/appdata/esp/esp-adf/esp-idf/components/esp_netif/lwip/esp_netif_lwip_defaults.c
esp-idf/esp_netif/CMakeFiles/__idf_esp_netif.dir/lwip/esp_netif_lwip_defaults.c.obj: esp-idf/esp_netif/CMakeFiles/__idf_esp_netif.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object esp-idf/esp_netif/CMakeFiles/__idf_esp_netif.dir/lwip/esp_netif_lwip_defaults.c.obj"
	cd /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/esp-idf/esp_netif && /home/betelgeuse/.espressif/tools/xtensa-esp-elf/esp-13.2.0_20240530/xtensa-esp-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT esp-idf/esp_netif/CMakeFiles/__idf_esp_netif.dir/lwip/esp_netif_lwip_defaults.c.obj -MF CMakeFiles/__idf_esp_netif.dir/lwip/esp_netif_lwip_defaults.c.obj.d -o CMakeFiles/__idf_esp_netif.dir/lwip/esp_netif_lwip_defaults.c.obj -c /home/betelgeuse/appdata/esp/esp-adf/esp-idf/components/esp_netif/lwip/esp_netif_lwip_defaults.c

esp-idf/esp_netif/CMakeFiles/__idf_esp_netif.dir/lwip/esp_netif_lwip_defaults.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/__idf_esp_netif.dir/lwip/esp_netif_lwip_defaults.c.i"
	cd /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/esp-idf/esp_netif && /home/betelgeuse/.espressif/tools/xtensa-esp-elf/esp-13.2.0_20240530/xtensa-esp-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/betelgeuse/appdata/esp/esp-adf/esp-idf/components/esp_netif/lwip/esp_netif_lwip_defaults.c > CMakeFiles/__idf_esp_netif.dir/lwip/esp_netif_lwip_defaults.c.i

esp-idf/esp_netif/CMakeFiles/__idf_esp_netif.dir/lwip/esp_netif_lwip_defaults.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/__idf_esp_netif.dir/lwip/esp_netif_lwip_defaults.c.s"
	cd /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/esp-idf/esp_netif && /home/betelgeuse/.espressif/tools/xtensa-esp-elf/esp-13.2.0_20240530/xtensa-esp-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/betelgeuse/appdata/esp/esp-adf/esp-idf/components/esp_netif/lwip/esp_netif_lwip_defaults.c -o CMakeFiles/__idf_esp_netif.dir/lwip/esp_netif_lwip_defaults.c.s

esp-idf/esp_netif/CMakeFiles/__idf_esp_netif.dir/lwip/netif/wlanif.c.obj: esp-idf/esp_netif/CMakeFiles/__idf_esp_netif.dir/flags.make
esp-idf/esp_netif/CMakeFiles/__idf_esp_netif.dir/lwip/netif/wlanif.c.obj: /home/betelgeuse/appdata/esp/esp-adf/esp-idf/components/esp_netif/lwip/netif/wlanif.c
esp-idf/esp_netif/CMakeFiles/__idf_esp_netif.dir/lwip/netif/wlanif.c.obj: esp-idf/esp_netif/CMakeFiles/__idf_esp_netif.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object esp-idf/esp_netif/CMakeFiles/__idf_esp_netif.dir/lwip/netif/wlanif.c.obj"
	cd /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/esp-idf/esp_netif && /home/betelgeuse/.espressif/tools/xtensa-esp-elf/esp-13.2.0_20240530/xtensa-esp-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT esp-idf/esp_netif/CMakeFiles/__idf_esp_netif.dir/lwip/netif/wlanif.c.obj -MF CMakeFiles/__idf_esp_netif.dir/lwip/netif/wlanif.c.obj.d -o CMakeFiles/__idf_esp_netif.dir/lwip/netif/wlanif.c.obj -c /home/betelgeuse/appdata/esp/esp-adf/esp-idf/components/esp_netif/lwip/netif/wlanif.c

esp-idf/esp_netif/CMakeFiles/__idf_esp_netif.dir/lwip/netif/wlanif.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/__idf_esp_netif.dir/lwip/netif/wlanif.c.i"
	cd /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/esp-idf/esp_netif && /home/betelgeuse/.espressif/tools/xtensa-esp-elf/esp-13.2.0_20240530/xtensa-esp-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/betelgeuse/appdata/esp/esp-adf/esp-idf/components/esp_netif/lwip/netif/wlanif.c > CMakeFiles/__idf_esp_netif.dir/lwip/netif/wlanif.c.i

esp-idf/esp_netif/CMakeFiles/__idf_esp_netif.dir/lwip/netif/wlanif.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/__idf_esp_netif.dir/lwip/netif/wlanif.c.s"
	cd /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/esp-idf/esp_netif && /home/betelgeuse/.espressif/tools/xtensa-esp-elf/esp-13.2.0_20240530/xtensa-esp-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/betelgeuse/appdata/esp/esp-adf/esp-idf/components/esp_netif/lwip/netif/wlanif.c -o CMakeFiles/__idf_esp_netif.dir/lwip/netif/wlanif.c.s

esp-idf/esp_netif/CMakeFiles/__idf_esp_netif.dir/lwip/netif/ethernetif.c.obj: esp-idf/esp_netif/CMakeFiles/__idf_esp_netif.dir/flags.make
esp-idf/esp_netif/CMakeFiles/__idf_esp_netif.dir/lwip/netif/ethernetif.c.obj: /home/betelgeuse/appdata/esp/esp-adf/esp-idf/components/esp_netif/lwip/netif/ethernetif.c
esp-idf/esp_netif/CMakeFiles/__idf_esp_netif.dir/lwip/netif/ethernetif.c.obj: esp-idf/esp_netif/CMakeFiles/__idf_esp_netif.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building C object esp-idf/esp_netif/CMakeFiles/__idf_esp_netif.dir/lwip/netif/ethernetif.c.obj"
	cd /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/esp-idf/esp_netif && /home/betelgeuse/.espressif/tools/xtensa-esp-elf/esp-13.2.0_20240530/xtensa-esp-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT esp-idf/esp_netif/CMakeFiles/__idf_esp_netif.dir/lwip/netif/ethernetif.c.obj -MF CMakeFiles/__idf_esp_netif.dir/lwip/netif/ethernetif.c.obj.d -o CMakeFiles/__idf_esp_netif.dir/lwip/netif/ethernetif.c.obj -c /home/betelgeuse/appdata/esp/esp-adf/esp-idf/components/esp_netif/lwip/netif/ethernetif.c

esp-idf/esp_netif/CMakeFiles/__idf_esp_netif.dir/lwip/netif/ethernetif.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/__idf_esp_netif.dir/lwip/netif/ethernetif.c.i"
	cd /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/esp-idf/esp_netif && /home/betelgeuse/.espressif/tools/xtensa-esp-elf/esp-13.2.0_20240530/xtensa-esp-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/betelgeuse/appdata/esp/esp-adf/esp-idf/components/esp_netif/lwip/netif/ethernetif.c > CMakeFiles/__idf_esp_netif.dir/lwip/netif/ethernetif.c.i

esp-idf/esp_netif/CMakeFiles/__idf_esp_netif.dir/lwip/netif/ethernetif.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/__idf_esp_netif.dir/lwip/netif/ethernetif.c.s"
	cd /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/esp-idf/esp_netif && /home/betelgeuse/.espressif/tools/xtensa-esp-elf/esp-13.2.0_20240530/xtensa-esp-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/betelgeuse/appdata/esp/esp-adf/esp-idf/components/esp_netif/lwip/netif/ethernetif.c -o CMakeFiles/__idf_esp_netif.dir/lwip/netif/ethernetif.c.s

esp-idf/esp_netif/CMakeFiles/__idf_esp_netif.dir/lwip/netif/esp_pbuf_ref.c.obj: esp-idf/esp_netif/CMakeFiles/__idf_esp_netif.dir/flags.make
esp-idf/esp_netif/CMakeFiles/__idf_esp_netif.dir/lwip/netif/esp_pbuf_ref.c.obj: /home/betelgeuse/appdata/esp/esp-adf/esp-idf/components/esp_netif/lwip/netif/esp_pbuf_ref.c
esp-idf/esp_netif/CMakeFiles/__idf_esp_netif.dir/lwip/netif/esp_pbuf_ref.c.obj: esp-idf/esp_netif/CMakeFiles/__idf_esp_netif.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building C object esp-idf/esp_netif/CMakeFiles/__idf_esp_netif.dir/lwip/netif/esp_pbuf_ref.c.obj"
	cd /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/esp-idf/esp_netif && /home/betelgeuse/.espressif/tools/xtensa-esp-elf/esp-13.2.0_20240530/xtensa-esp-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT esp-idf/esp_netif/CMakeFiles/__idf_esp_netif.dir/lwip/netif/esp_pbuf_ref.c.obj -MF CMakeFiles/__idf_esp_netif.dir/lwip/netif/esp_pbuf_ref.c.obj.d -o CMakeFiles/__idf_esp_netif.dir/lwip/netif/esp_pbuf_ref.c.obj -c /home/betelgeuse/appdata/esp/esp-adf/esp-idf/components/esp_netif/lwip/netif/esp_pbuf_ref.c

esp-idf/esp_netif/CMakeFiles/__idf_esp_netif.dir/lwip/netif/esp_pbuf_ref.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/__idf_esp_netif.dir/lwip/netif/esp_pbuf_ref.c.i"
	cd /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/esp-idf/esp_netif && /home/betelgeuse/.espressif/tools/xtensa-esp-elf/esp-13.2.0_20240530/xtensa-esp-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/betelgeuse/appdata/esp/esp-adf/esp-idf/components/esp_netif/lwip/netif/esp_pbuf_ref.c > CMakeFiles/__idf_esp_netif.dir/lwip/netif/esp_pbuf_ref.c.i

esp-idf/esp_netif/CMakeFiles/__idf_esp_netif.dir/lwip/netif/esp_pbuf_ref.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/__idf_esp_netif.dir/lwip/netif/esp_pbuf_ref.c.s"
	cd /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/esp-idf/esp_netif && /home/betelgeuse/.espressif/tools/xtensa-esp-elf/esp-13.2.0_20240530/xtensa-esp-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/betelgeuse/appdata/esp/esp-adf/esp-idf/components/esp_netif/lwip/netif/esp_pbuf_ref.c -o CMakeFiles/__idf_esp_netif.dir/lwip/netif/esp_pbuf_ref.c.s

# Object files for target __idf_esp_netif
__idf_esp_netif_OBJECTS = \
"CMakeFiles/__idf_esp_netif.dir/esp_netif_handlers.c.obj" \
"CMakeFiles/__idf_esp_netif.dir/esp_netif_objects.c.obj" \
"CMakeFiles/__idf_esp_netif.dir/esp_netif_defaults.c.obj" \
"CMakeFiles/__idf_esp_netif.dir/lwip/esp_netif_lwip.c.obj" \
"CMakeFiles/__idf_esp_netif.dir/lwip/esp_netif_sntp.c.obj" \
"CMakeFiles/__idf_esp_netif.dir/lwip/esp_netif_lwip_defaults.c.obj" \
"CMakeFiles/__idf_esp_netif.dir/lwip/netif/wlanif.c.obj" \
"CMakeFiles/__idf_esp_netif.dir/lwip/netif/ethernetif.c.obj" \
"CMakeFiles/__idf_esp_netif.dir/lwip/netif/esp_pbuf_ref.c.obj"

# External object files for target __idf_esp_netif
__idf_esp_netif_EXTERNAL_OBJECTS =

esp-idf/esp_netif/libesp_netif.a: esp-idf/esp_netif/CMakeFiles/__idf_esp_netif.dir/esp_netif_handlers.c.obj
esp-idf/esp_netif/libesp_netif.a: esp-idf/esp_netif/CMakeFiles/__idf_esp_netif.dir/esp_netif_objects.c.obj
esp-idf/esp_netif/libesp_netif.a: esp-idf/esp_netif/CMakeFiles/__idf_esp_netif.dir/esp_netif_defaults.c.obj
esp-idf/esp_netif/libesp_netif.a: esp-idf/esp_netif/CMakeFiles/__idf_esp_netif.dir/lwip/esp_netif_lwip.c.obj
esp-idf/esp_netif/libesp_netif.a: esp-idf/esp_netif/CMakeFiles/__idf_esp_netif.dir/lwip/esp_netif_sntp.c.obj
esp-idf/esp_netif/libesp_netif.a: esp-idf/esp_netif/CMakeFiles/__idf_esp_netif.dir/lwip/esp_netif_lwip_defaults.c.obj
esp-idf/esp_netif/libesp_netif.a: esp-idf/esp_netif/CMakeFiles/__idf_esp_netif.dir/lwip/netif/wlanif.c.obj
esp-idf/esp_netif/libesp_netif.a: esp-idf/esp_netif/CMakeFiles/__idf_esp_netif.dir/lwip/netif/ethernetif.c.obj
esp-idf/esp_netif/libesp_netif.a: esp-idf/esp_netif/CMakeFiles/__idf_esp_netif.dir/lwip/netif/esp_pbuf_ref.c.obj
esp-idf/esp_netif/libesp_netif.a: esp-idf/esp_netif/CMakeFiles/__idf_esp_netif.dir/build.make
esp-idf/esp_netif/libesp_netif.a: esp-idf/esp_netif/CMakeFiles/__idf_esp_netif.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Linking C static library libesp_netif.a"
	cd /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/esp-idf/esp_netif && $(CMAKE_COMMAND) -P CMakeFiles/__idf_esp_netif.dir/cmake_clean_target.cmake
	cd /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/esp-idf/esp_netif && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/__idf_esp_netif.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
esp-idf/esp_netif/CMakeFiles/__idf_esp_netif.dir/build: esp-idf/esp_netif/libesp_netif.a
.PHONY : esp-idf/esp_netif/CMakeFiles/__idf_esp_netif.dir/build

esp-idf/esp_netif/CMakeFiles/__idf_esp_netif.dir/clean:
	cd /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/esp-idf/esp_netif && $(CMAKE_COMMAND) -P CMakeFiles/__idf_esp_netif.dir/cmake_clean.cmake
.PHONY : esp-idf/esp_netif/CMakeFiles/__idf_esp_netif.dir/clean

esp-idf/esp_netif/CMakeFiles/__idf_esp_netif.dir/depend:
	cd /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom /home/betelgeuse/appdata/esp/esp-adf/esp-idf/components/esp_netif /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/esp-idf/esp_netif /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/esp-idf/esp_netif/CMakeFiles/__idf_esp_netif.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : esp-idf/esp_netif/CMakeFiles/__idf_esp_netif.dir/depend

