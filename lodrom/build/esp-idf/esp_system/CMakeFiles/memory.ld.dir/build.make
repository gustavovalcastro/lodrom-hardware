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

# Utility rule file for memory.ld.

# Include any custom commands dependencies for this target.
include esp-idf/esp_system/CMakeFiles/memory.ld.dir/compiler_depend.make

# Include the progress variables for this target.
include esp-idf/esp_system/CMakeFiles/memory.ld.dir/progress.make

esp-idf/esp_system/CMakeFiles/memory.ld: esp-idf/esp_system/ld/memory.ld

esp-idf/esp_system/ld/memory.ld: /home/betelgeuse/appdata/esp/esp-adf/esp-idf/components/esp_system/ld/esp32/memory.ld.in
esp-idf/esp_system/ld/memory.ld: config/sdkconfig.h
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/esp-idf/esp_system/ld/memory.ld linker script..."
	cd /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/esp-idf/esp_system && /usr/bin/cmake -DCC=/home/betelgeuse/.espressif/tools/xtensa-esp-elf/esp-13.2.0_20240530/xtensa-esp-elf/bin/xtensa-esp32-elf-gcc -DSOURCE=/home/betelgeuse/appdata/esp/esp-adf/esp-idf/components/esp_system/ld/esp32/memory.ld.in -DTARGET=/home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/esp-idf/esp_system/ld/memory.ld -DCONFIG_DIR=/home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/config -DLD_DIR=/home/betelgeuse/appdata/esp/esp-adf/esp-idf/components/esp_system/ld -P /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/esp-idf/esp_system/ld/linker_script_generator.cmake

memory.ld: esp-idf/esp_system/CMakeFiles/memory.ld
memory.ld: esp-idf/esp_system/ld/memory.ld
memory.ld: esp-idf/esp_system/CMakeFiles/memory.ld.dir/build.make
.PHONY : memory.ld

# Rule to build all files generated by this target.
esp-idf/esp_system/CMakeFiles/memory.ld.dir/build: memory.ld
.PHONY : esp-idf/esp_system/CMakeFiles/memory.ld.dir/build

esp-idf/esp_system/CMakeFiles/memory.ld.dir/clean:
	cd /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/esp-idf/esp_system && $(CMAKE_COMMAND) -P CMakeFiles/memory.ld.dir/cmake_clean.cmake
.PHONY : esp-idf/esp_system/CMakeFiles/memory.ld.dir/clean

esp-idf/esp_system/CMakeFiles/memory.ld.dir/depend:
	cd /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom /home/betelgeuse/appdata/esp/esp-adf/esp-idf/components/esp_system /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/esp-idf/esp_system /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/esp-idf/esp_system/CMakeFiles/memory.ld.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : esp-idf/esp_system/CMakeFiles/memory.ld.dir/depend

