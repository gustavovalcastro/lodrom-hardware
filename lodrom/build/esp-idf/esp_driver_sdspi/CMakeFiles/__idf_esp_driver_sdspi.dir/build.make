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
include esp-idf/esp_driver_sdspi/CMakeFiles/__idf_esp_driver_sdspi.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include esp-idf/esp_driver_sdspi/CMakeFiles/__idf_esp_driver_sdspi.dir/compiler_depend.make

# Include the progress variables for this target.
include esp-idf/esp_driver_sdspi/CMakeFiles/__idf_esp_driver_sdspi.dir/progress.make

# Include the compile flags for this target's objects.
include esp-idf/esp_driver_sdspi/CMakeFiles/__idf_esp_driver_sdspi.dir/flags.make

esp-idf/esp_driver_sdspi/CMakeFiles/__idf_esp_driver_sdspi.dir/src/sdspi_crc.c.obj: esp-idf/esp_driver_sdspi/CMakeFiles/__idf_esp_driver_sdspi.dir/flags.make
esp-idf/esp_driver_sdspi/CMakeFiles/__idf_esp_driver_sdspi.dir/src/sdspi_crc.c.obj: /home/betelgeuse/appdata/esp/esp-adf/esp-idf/components/esp_driver_sdspi/src/sdspi_crc.c
esp-idf/esp_driver_sdspi/CMakeFiles/__idf_esp_driver_sdspi.dir/src/sdspi_crc.c.obj: esp-idf/esp_driver_sdspi/CMakeFiles/__idf_esp_driver_sdspi.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object esp-idf/esp_driver_sdspi/CMakeFiles/__idf_esp_driver_sdspi.dir/src/sdspi_crc.c.obj"
	cd /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/esp-idf/esp_driver_sdspi && /home/betelgeuse/.espressif/tools/xtensa-esp-elf/esp-13.2.0_20240530/xtensa-esp-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT esp-idf/esp_driver_sdspi/CMakeFiles/__idf_esp_driver_sdspi.dir/src/sdspi_crc.c.obj -MF CMakeFiles/__idf_esp_driver_sdspi.dir/src/sdspi_crc.c.obj.d -o CMakeFiles/__idf_esp_driver_sdspi.dir/src/sdspi_crc.c.obj -c /home/betelgeuse/appdata/esp/esp-adf/esp-idf/components/esp_driver_sdspi/src/sdspi_crc.c

esp-idf/esp_driver_sdspi/CMakeFiles/__idf_esp_driver_sdspi.dir/src/sdspi_crc.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/__idf_esp_driver_sdspi.dir/src/sdspi_crc.c.i"
	cd /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/esp-idf/esp_driver_sdspi && /home/betelgeuse/.espressif/tools/xtensa-esp-elf/esp-13.2.0_20240530/xtensa-esp-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/betelgeuse/appdata/esp/esp-adf/esp-idf/components/esp_driver_sdspi/src/sdspi_crc.c > CMakeFiles/__idf_esp_driver_sdspi.dir/src/sdspi_crc.c.i

esp-idf/esp_driver_sdspi/CMakeFiles/__idf_esp_driver_sdspi.dir/src/sdspi_crc.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/__idf_esp_driver_sdspi.dir/src/sdspi_crc.c.s"
	cd /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/esp-idf/esp_driver_sdspi && /home/betelgeuse/.espressif/tools/xtensa-esp-elf/esp-13.2.0_20240530/xtensa-esp-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/betelgeuse/appdata/esp/esp-adf/esp-idf/components/esp_driver_sdspi/src/sdspi_crc.c -o CMakeFiles/__idf_esp_driver_sdspi.dir/src/sdspi_crc.c.s

esp-idf/esp_driver_sdspi/CMakeFiles/__idf_esp_driver_sdspi.dir/src/sdspi_host.c.obj: esp-idf/esp_driver_sdspi/CMakeFiles/__idf_esp_driver_sdspi.dir/flags.make
esp-idf/esp_driver_sdspi/CMakeFiles/__idf_esp_driver_sdspi.dir/src/sdspi_host.c.obj: /home/betelgeuse/appdata/esp/esp-adf/esp-idf/components/esp_driver_sdspi/src/sdspi_host.c
esp-idf/esp_driver_sdspi/CMakeFiles/__idf_esp_driver_sdspi.dir/src/sdspi_host.c.obj: esp-idf/esp_driver_sdspi/CMakeFiles/__idf_esp_driver_sdspi.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object esp-idf/esp_driver_sdspi/CMakeFiles/__idf_esp_driver_sdspi.dir/src/sdspi_host.c.obj"
	cd /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/esp-idf/esp_driver_sdspi && /home/betelgeuse/.espressif/tools/xtensa-esp-elf/esp-13.2.0_20240530/xtensa-esp-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT esp-idf/esp_driver_sdspi/CMakeFiles/__idf_esp_driver_sdspi.dir/src/sdspi_host.c.obj -MF CMakeFiles/__idf_esp_driver_sdspi.dir/src/sdspi_host.c.obj.d -o CMakeFiles/__idf_esp_driver_sdspi.dir/src/sdspi_host.c.obj -c /home/betelgeuse/appdata/esp/esp-adf/esp-idf/components/esp_driver_sdspi/src/sdspi_host.c

esp-idf/esp_driver_sdspi/CMakeFiles/__idf_esp_driver_sdspi.dir/src/sdspi_host.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/__idf_esp_driver_sdspi.dir/src/sdspi_host.c.i"
	cd /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/esp-idf/esp_driver_sdspi && /home/betelgeuse/.espressif/tools/xtensa-esp-elf/esp-13.2.0_20240530/xtensa-esp-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/betelgeuse/appdata/esp/esp-adf/esp-idf/components/esp_driver_sdspi/src/sdspi_host.c > CMakeFiles/__idf_esp_driver_sdspi.dir/src/sdspi_host.c.i

esp-idf/esp_driver_sdspi/CMakeFiles/__idf_esp_driver_sdspi.dir/src/sdspi_host.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/__idf_esp_driver_sdspi.dir/src/sdspi_host.c.s"
	cd /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/esp-idf/esp_driver_sdspi && /home/betelgeuse/.espressif/tools/xtensa-esp-elf/esp-13.2.0_20240530/xtensa-esp-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/betelgeuse/appdata/esp/esp-adf/esp-idf/components/esp_driver_sdspi/src/sdspi_host.c -o CMakeFiles/__idf_esp_driver_sdspi.dir/src/sdspi_host.c.s

esp-idf/esp_driver_sdspi/CMakeFiles/__idf_esp_driver_sdspi.dir/src/sdspi_transaction.c.obj: esp-idf/esp_driver_sdspi/CMakeFiles/__idf_esp_driver_sdspi.dir/flags.make
esp-idf/esp_driver_sdspi/CMakeFiles/__idf_esp_driver_sdspi.dir/src/sdspi_transaction.c.obj: /home/betelgeuse/appdata/esp/esp-adf/esp-idf/components/esp_driver_sdspi/src/sdspi_transaction.c
esp-idf/esp_driver_sdspi/CMakeFiles/__idf_esp_driver_sdspi.dir/src/sdspi_transaction.c.obj: esp-idf/esp_driver_sdspi/CMakeFiles/__idf_esp_driver_sdspi.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object esp-idf/esp_driver_sdspi/CMakeFiles/__idf_esp_driver_sdspi.dir/src/sdspi_transaction.c.obj"
	cd /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/esp-idf/esp_driver_sdspi && /home/betelgeuse/.espressif/tools/xtensa-esp-elf/esp-13.2.0_20240530/xtensa-esp-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT esp-idf/esp_driver_sdspi/CMakeFiles/__idf_esp_driver_sdspi.dir/src/sdspi_transaction.c.obj -MF CMakeFiles/__idf_esp_driver_sdspi.dir/src/sdspi_transaction.c.obj.d -o CMakeFiles/__idf_esp_driver_sdspi.dir/src/sdspi_transaction.c.obj -c /home/betelgeuse/appdata/esp/esp-adf/esp-idf/components/esp_driver_sdspi/src/sdspi_transaction.c

esp-idf/esp_driver_sdspi/CMakeFiles/__idf_esp_driver_sdspi.dir/src/sdspi_transaction.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/__idf_esp_driver_sdspi.dir/src/sdspi_transaction.c.i"
	cd /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/esp-idf/esp_driver_sdspi && /home/betelgeuse/.espressif/tools/xtensa-esp-elf/esp-13.2.0_20240530/xtensa-esp-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/betelgeuse/appdata/esp/esp-adf/esp-idf/components/esp_driver_sdspi/src/sdspi_transaction.c > CMakeFiles/__idf_esp_driver_sdspi.dir/src/sdspi_transaction.c.i

esp-idf/esp_driver_sdspi/CMakeFiles/__idf_esp_driver_sdspi.dir/src/sdspi_transaction.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/__idf_esp_driver_sdspi.dir/src/sdspi_transaction.c.s"
	cd /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/esp-idf/esp_driver_sdspi && /home/betelgeuse/.espressif/tools/xtensa-esp-elf/esp-13.2.0_20240530/xtensa-esp-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/betelgeuse/appdata/esp/esp-adf/esp-idf/components/esp_driver_sdspi/src/sdspi_transaction.c -o CMakeFiles/__idf_esp_driver_sdspi.dir/src/sdspi_transaction.c.s

# Object files for target __idf_esp_driver_sdspi
__idf_esp_driver_sdspi_OBJECTS = \
"CMakeFiles/__idf_esp_driver_sdspi.dir/src/sdspi_crc.c.obj" \
"CMakeFiles/__idf_esp_driver_sdspi.dir/src/sdspi_host.c.obj" \
"CMakeFiles/__idf_esp_driver_sdspi.dir/src/sdspi_transaction.c.obj"

# External object files for target __idf_esp_driver_sdspi
__idf_esp_driver_sdspi_EXTERNAL_OBJECTS =

esp-idf/esp_driver_sdspi/libesp_driver_sdspi.a: esp-idf/esp_driver_sdspi/CMakeFiles/__idf_esp_driver_sdspi.dir/src/sdspi_crc.c.obj
esp-idf/esp_driver_sdspi/libesp_driver_sdspi.a: esp-idf/esp_driver_sdspi/CMakeFiles/__idf_esp_driver_sdspi.dir/src/sdspi_host.c.obj
esp-idf/esp_driver_sdspi/libesp_driver_sdspi.a: esp-idf/esp_driver_sdspi/CMakeFiles/__idf_esp_driver_sdspi.dir/src/sdspi_transaction.c.obj
esp-idf/esp_driver_sdspi/libesp_driver_sdspi.a: esp-idf/esp_driver_sdspi/CMakeFiles/__idf_esp_driver_sdspi.dir/build.make
esp-idf/esp_driver_sdspi/libesp_driver_sdspi.a: esp-idf/esp_driver_sdspi/CMakeFiles/__idf_esp_driver_sdspi.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking C static library libesp_driver_sdspi.a"
	cd /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/esp-idf/esp_driver_sdspi && $(CMAKE_COMMAND) -P CMakeFiles/__idf_esp_driver_sdspi.dir/cmake_clean_target.cmake
	cd /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/esp-idf/esp_driver_sdspi && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/__idf_esp_driver_sdspi.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
esp-idf/esp_driver_sdspi/CMakeFiles/__idf_esp_driver_sdspi.dir/build: esp-idf/esp_driver_sdspi/libesp_driver_sdspi.a
.PHONY : esp-idf/esp_driver_sdspi/CMakeFiles/__idf_esp_driver_sdspi.dir/build

esp-idf/esp_driver_sdspi/CMakeFiles/__idf_esp_driver_sdspi.dir/clean:
	cd /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/esp-idf/esp_driver_sdspi && $(CMAKE_COMMAND) -P CMakeFiles/__idf_esp_driver_sdspi.dir/cmake_clean.cmake
.PHONY : esp-idf/esp_driver_sdspi/CMakeFiles/__idf_esp_driver_sdspi.dir/clean

esp-idf/esp_driver_sdspi/CMakeFiles/__idf_esp_driver_sdspi.dir/depend:
	cd /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom /home/betelgeuse/appdata/esp/esp-adf/esp-idf/components/esp_driver_sdspi /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/esp-idf/esp_driver_sdspi /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/esp-idf/esp_driver_sdspi/CMakeFiles/__idf_esp_driver_sdspi.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : esp-idf/esp_driver_sdspi/CMakeFiles/__idf_esp_driver_sdspi.dir/depend

