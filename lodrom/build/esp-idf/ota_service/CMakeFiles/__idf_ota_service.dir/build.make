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
include esp-idf/ota_service/CMakeFiles/__idf_ota_service.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include esp-idf/ota_service/CMakeFiles/__idf_ota_service.dir/compiler_depend.make

# Include the progress variables for this target.
include esp-idf/ota_service/CMakeFiles/__idf_ota_service.dir/progress.make

# Include the compile flags for this target's objects.
include esp-idf/ota_service/CMakeFiles/__idf_ota_service.dir/flags.make

esp-idf/ota_service/CMakeFiles/__idf_ota_service.dir/esp_fs_ota.c.obj: esp-idf/ota_service/CMakeFiles/__idf_ota_service.dir/flags.make
esp-idf/ota_service/CMakeFiles/__idf_ota_service.dir/esp_fs_ota.c.obj: /home/betelgeuse/appdata/esp/esp-adf/components/ota_service/esp_fs_ota.c
esp-idf/ota_service/CMakeFiles/__idf_ota_service.dir/esp_fs_ota.c.obj: esp-idf/ota_service/CMakeFiles/__idf_ota_service.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object esp-idf/ota_service/CMakeFiles/__idf_ota_service.dir/esp_fs_ota.c.obj"
	cd /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/esp-idf/ota_service && /home/betelgeuse/.espressif/tools/xtensa-esp-elf/esp-13.2.0_20240530/xtensa-esp-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT esp-idf/ota_service/CMakeFiles/__idf_ota_service.dir/esp_fs_ota.c.obj -MF CMakeFiles/__idf_ota_service.dir/esp_fs_ota.c.obj.d -o CMakeFiles/__idf_ota_service.dir/esp_fs_ota.c.obj -c /home/betelgeuse/appdata/esp/esp-adf/components/ota_service/esp_fs_ota.c

esp-idf/ota_service/CMakeFiles/__idf_ota_service.dir/esp_fs_ota.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/__idf_ota_service.dir/esp_fs_ota.c.i"
	cd /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/esp-idf/ota_service && /home/betelgeuse/.espressif/tools/xtensa-esp-elf/esp-13.2.0_20240530/xtensa-esp-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/betelgeuse/appdata/esp/esp-adf/components/ota_service/esp_fs_ota.c > CMakeFiles/__idf_ota_service.dir/esp_fs_ota.c.i

esp-idf/ota_service/CMakeFiles/__idf_ota_service.dir/esp_fs_ota.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/__idf_ota_service.dir/esp_fs_ota.c.s"
	cd /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/esp-idf/ota_service && /home/betelgeuse/.espressif/tools/xtensa-esp-elf/esp-13.2.0_20240530/xtensa-esp-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/betelgeuse/appdata/esp/esp-adf/components/ota_service/esp_fs_ota.c -o CMakeFiles/__idf_ota_service.dir/esp_fs_ota.c.s

esp-idf/ota_service/CMakeFiles/__idf_ota_service.dir/ota_service.c.obj: esp-idf/ota_service/CMakeFiles/__idf_ota_service.dir/flags.make
esp-idf/ota_service/CMakeFiles/__idf_ota_service.dir/ota_service.c.obj: /home/betelgeuse/appdata/esp/esp-adf/components/ota_service/ota_service.c
esp-idf/ota_service/CMakeFiles/__idf_ota_service.dir/ota_service.c.obj: esp-idf/ota_service/CMakeFiles/__idf_ota_service.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object esp-idf/ota_service/CMakeFiles/__idf_ota_service.dir/ota_service.c.obj"
	cd /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/esp-idf/ota_service && /home/betelgeuse/.espressif/tools/xtensa-esp-elf/esp-13.2.0_20240530/xtensa-esp-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT esp-idf/ota_service/CMakeFiles/__idf_ota_service.dir/ota_service.c.obj -MF CMakeFiles/__idf_ota_service.dir/ota_service.c.obj.d -o CMakeFiles/__idf_ota_service.dir/ota_service.c.obj -c /home/betelgeuse/appdata/esp/esp-adf/components/ota_service/ota_service.c

esp-idf/ota_service/CMakeFiles/__idf_ota_service.dir/ota_service.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/__idf_ota_service.dir/ota_service.c.i"
	cd /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/esp-idf/ota_service && /home/betelgeuse/.espressif/tools/xtensa-esp-elf/esp-13.2.0_20240530/xtensa-esp-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/betelgeuse/appdata/esp/esp-adf/components/ota_service/ota_service.c > CMakeFiles/__idf_ota_service.dir/ota_service.c.i

esp-idf/ota_service/CMakeFiles/__idf_ota_service.dir/ota_service.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/__idf_ota_service.dir/ota_service.c.s"
	cd /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/esp-idf/ota_service && /home/betelgeuse/.espressif/tools/xtensa-esp-elf/esp-13.2.0_20240530/xtensa-esp-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/betelgeuse/appdata/esp/esp-adf/components/ota_service/ota_service.c -o CMakeFiles/__idf_ota_service.dir/ota_service.c.s

esp-idf/ota_service/CMakeFiles/__idf_ota_service.dir/ota_proc_default.c.obj: esp-idf/ota_service/CMakeFiles/__idf_ota_service.dir/flags.make
esp-idf/ota_service/CMakeFiles/__idf_ota_service.dir/ota_proc_default.c.obj: /home/betelgeuse/appdata/esp/esp-adf/components/ota_service/ota_proc_default.c
esp-idf/ota_service/CMakeFiles/__idf_ota_service.dir/ota_proc_default.c.obj: esp-idf/ota_service/CMakeFiles/__idf_ota_service.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object esp-idf/ota_service/CMakeFiles/__idf_ota_service.dir/ota_proc_default.c.obj"
	cd /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/esp-idf/ota_service && /home/betelgeuse/.espressif/tools/xtensa-esp-elf/esp-13.2.0_20240530/xtensa-esp-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT esp-idf/ota_service/CMakeFiles/__idf_ota_service.dir/ota_proc_default.c.obj -MF CMakeFiles/__idf_ota_service.dir/ota_proc_default.c.obj.d -o CMakeFiles/__idf_ota_service.dir/ota_proc_default.c.obj -c /home/betelgeuse/appdata/esp/esp-adf/components/ota_service/ota_proc_default.c

esp-idf/ota_service/CMakeFiles/__idf_ota_service.dir/ota_proc_default.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/__idf_ota_service.dir/ota_proc_default.c.i"
	cd /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/esp-idf/ota_service && /home/betelgeuse/.espressif/tools/xtensa-esp-elf/esp-13.2.0_20240530/xtensa-esp-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/betelgeuse/appdata/esp/esp-adf/components/ota_service/ota_proc_default.c > CMakeFiles/__idf_ota_service.dir/ota_proc_default.c.i

esp-idf/ota_service/CMakeFiles/__idf_ota_service.dir/ota_proc_default.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/__idf_ota_service.dir/ota_proc_default.c.s"
	cd /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/esp-idf/ota_service && /home/betelgeuse/.espressif/tools/xtensa-esp-elf/esp-13.2.0_20240530/xtensa-esp-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/betelgeuse/appdata/esp/esp-adf/components/ota_service/ota_proc_default.c -o CMakeFiles/__idf_ota_service.dir/ota_proc_default.c.s

# Object files for target __idf_ota_service
__idf_ota_service_OBJECTS = \
"CMakeFiles/__idf_ota_service.dir/esp_fs_ota.c.obj" \
"CMakeFiles/__idf_ota_service.dir/ota_service.c.obj" \
"CMakeFiles/__idf_ota_service.dir/ota_proc_default.c.obj"

# External object files for target __idf_ota_service
__idf_ota_service_EXTERNAL_OBJECTS =

esp-idf/ota_service/libota_service.a: esp-idf/ota_service/CMakeFiles/__idf_ota_service.dir/esp_fs_ota.c.obj
esp-idf/ota_service/libota_service.a: esp-idf/ota_service/CMakeFiles/__idf_ota_service.dir/ota_service.c.obj
esp-idf/ota_service/libota_service.a: esp-idf/ota_service/CMakeFiles/__idf_ota_service.dir/ota_proc_default.c.obj
esp-idf/ota_service/libota_service.a: esp-idf/ota_service/CMakeFiles/__idf_ota_service.dir/build.make
esp-idf/ota_service/libota_service.a: esp-idf/ota_service/CMakeFiles/__idf_ota_service.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking C static library libota_service.a"
	cd /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/esp-idf/ota_service && $(CMAKE_COMMAND) -P CMakeFiles/__idf_ota_service.dir/cmake_clean_target.cmake
	cd /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/esp-idf/ota_service && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/__idf_ota_service.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
esp-idf/ota_service/CMakeFiles/__idf_ota_service.dir/build: esp-idf/ota_service/libota_service.a
.PHONY : esp-idf/ota_service/CMakeFiles/__idf_ota_service.dir/build

esp-idf/ota_service/CMakeFiles/__idf_ota_service.dir/clean:
	cd /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/esp-idf/ota_service && $(CMAKE_COMMAND) -P CMakeFiles/__idf_ota_service.dir/cmake_clean.cmake
.PHONY : esp-idf/ota_service/CMakeFiles/__idf_ota_service.dir/clean

esp-idf/ota_service/CMakeFiles/__idf_ota_service.dir/depend:
	cd /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom /home/betelgeuse/appdata/esp/esp-adf/components/ota_service /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/esp-idf/ota_service /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/esp-idf/ota_service/CMakeFiles/__idf_ota_service.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : esp-idf/ota_service/CMakeFiles/__idf_ota_service.dir/depend

