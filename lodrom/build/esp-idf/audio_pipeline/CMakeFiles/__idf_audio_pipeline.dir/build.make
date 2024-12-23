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
include esp-idf/audio_pipeline/CMakeFiles/__idf_audio_pipeline.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include esp-idf/audio_pipeline/CMakeFiles/__idf_audio_pipeline.dir/compiler_depend.make

# Include the progress variables for this target.
include esp-idf/audio_pipeline/CMakeFiles/__idf_audio_pipeline.dir/progress.make

# Include the compile flags for this target's objects.
include esp-idf/audio_pipeline/CMakeFiles/__idf_audio_pipeline.dir/flags.make

esp-idf/audio_pipeline/CMakeFiles/__idf_audio_pipeline.dir/audio_element.c.obj: esp-idf/audio_pipeline/CMakeFiles/__idf_audio_pipeline.dir/flags.make
esp-idf/audio_pipeline/CMakeFiles/__idf_audio_pipeline.dir/audio_element.c.obj: /home/betelgeuse/appdata/esp/esp-adf/components/audio_pipeline/audio_element.c
esp-idf/audio_pipeline/CMakeFiles/__idf_audio_pipeline.dir/audio_element.c.obj: esp-idf/audio_pipeline/CMakeFiles/__idf_audio_pipeline.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object esp-idf/audio_pipeline/CMakeFiles/__idf_audio_pipeline.dir/audio_element.c.obj"
	cd /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/esp-idf/audio_pipeline && /home/betelgeuse/.espressif/tools/xtensa-esp-elf/esp-13.2.0_20240530/xtensa-esp-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT esp-idf/audio_pipeline/CMakeFiles/__idf_audio_pipeline.dir/audio_element.c.obj -MF CMakeFiles/__idf_audio_pipeline.dir/audio_element.c.obj.d -o CMakeFiles/__idf_audio_pipeline.dir/audio_element.c.obj -c /home/betelgeuse/appdata/esp/esp-adf/components/audio_pipeline/audio_element.c

esp-idf/audio_pipeline/CMakeFiles/__idf_audio_pipeline.dir/audio_element.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/__idf_audio_pipeline.dir/audio_element.c.i"
	cd /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/esp-idf/audio_pipeline && /home/betelgeuse/.espressif/tools/xtensa-esp-elf/esp-13.2.0_20240530/xtensa-esp-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/betelgeuse/appdata/esp/esp-adf/components/audio_pipeline/audio_element.c > CMakeFiles/__idf_audio_pipeline.dir/audio_element.c.i

esp-idf/audio_pipeline/CMakeFiles/__idf_audio_pipeline.dir/audio_element.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/__idf_audio_pipeline.dir/audio_element.c.s"
	cd /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/esp-idf/audio_pipeline && /home/betelgeuse/.espressif/tools/xtensa-esp-elf/esp-13.2.0_20240530/xtensa-esp-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/betelgeuse/appdata/esp/esp-adf/components/audio_pipeline/audio_element.c -o CMakeFiles/__idf_audio_pipeline.dir/audio_element.c.s

esp-idf/audio_pipeline/CMakeFiles/__idf_audio_pipeline.dir/audio_event_iface.c.obj: esp-idf/audio_pipeline/CMakeFiles/__idf_audio_pipeline.dir/flags.make
esp-idf/audio_pipeline/CMakeFiles/__idf_audio_pipeline.dir/audio_event_iface.c.obj: /home/betelgeuse/appdata/esp/esp-adf/components/audio_pipeline/audio_event_iface.c
esp-idf/audio_pipeline/CMakeFiles/__idf_audio_pipeline.dir/audio_event_iface.c.obj: esp-idf/audio_pipeline/CMakeFiles/__idf_audio_pipeline.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object esp-idf/audio_pipeline/CMakeFiles/__idf_audio_pipeline.dir/audio_event_iface.c.obj"
	cd /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/esp-idf/audio_pipeline && /home/betelgeuse/.espressif/tools/xtensa-esp-elf/esp-13.2.0_20240530/xtensa-esp-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT esp-idf/audio_pipeline/CMakeFiles/__idf_audio_pipeline.dir/audio_event_iface.c.obj -MF CMakeFiles/__idf_audio_pipeline.dir/audio_event_iface.c.obj.d -o CMakeFiles/__idf_audio_pipeline.dir/audio_event_iface.c.obj -c /home/betelgeuse/appdata/esp/esp-adf/components/audio_pipeline/audio_event_iface.c

esp-idf/audio_pipeline/CMakeFiles/__idf_audio_pipeline.dir/audio_event_iface.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/__idf_audio_pipeline.dir/audio_event_iface.c.i"
	cd /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/esp-idf/audio_pipeline && /home/betelgeuse/.espressif/tools/xtensa-esp-elf/esp-13.2.0_20240530/xtensa-esp-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/betelgeuse/appdata/esp/esp-adf/components/audio_pipeline/audio_event_iface.c > CMakeFiles/__idf_audio_pipeline.dir/audio_event_iface.c.i

esp-idf/audio_pipeline/CMakeFiles/__idf_audio_pipeline.dir/audio_event_iface.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/__idf_audio_pipeline.dir/audio_event_iface.c.s"
	cd /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/esp-idf/audio_pipeline && /home/betelgeuse/.espressif/tools/xtensa-esp-elf/esp-13.2.0_20240530/xtensa-esp-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/betelgeuse/appdata/esp/esp-adf/components/audio_pipeline/audio_event_iface.c -o CMakeFiles/__idf_audio_pipeline.dir/audio_event_iface.c.s

esp-idf/audio_pipeline/CMakeFiles/__idf_audio_pipeline.dir/audio_pipeline.c.obj: esp-idf/audio_pipeline/CMakeFiles/__idf_audio_pipeline.dir/flags.make
esp-idf/audio_pipeline/CMakeFiles/__idf_audio_pipeline.dir/audio_pipeline.c.obj: /home/betelgeuse/appdata/esp/esp-adf/components/audio_pipeline/audio_pipeline.c
esp-idf/audio_pipeline/CMakeFiles/__idf_audio_pipeline.dir/audio_pipeline.c.obj: esp-idf/audio_pipeline/CMakeFiles/__idf_audio_pipeline.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object esp-idf/audio_pipeline/CMakeFiles/__idf_audio_pipeline.dir/audio_pipeline.c.obj"
	cd /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/esp-idf/audio_pipeline && /home/betelgeuse/.espressif/tools/xtensa-esp-elf/esp-13.2.0_20240530/xtensa-esp-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT esp-idf/audio_pipeline/CMakeFiles/__idf_audio_pipeline.dir/audio_pipeline.c.obj -MF CMakeFiles/__idf_audio_pipeline.dir/audio_pipeline.c.obj.d -o CMakeFiles/__idf_audio_pipeline.dir/audio_pipeline.c.obj -c /home/betelgeuse/appdata/esp/esp-adf/components/audio_pipeline/audio_pipeline.c

esp-idf/audio_pipeline/CMakeFiles/__idf_audio_pipeline.dir/audio_pipeline.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/__idf_audio_pipeline.dir/audio_pipeline.c.i"
	cd /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/esp-idf/audio_pipeline && /home/betelgeuse/.espressif/tools/xtensa-esp-elf/esp-13.2.0_20240530/xtensa-esp-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/betelgeuse/appdata/esp/esp-adf/components/audio_pipeline/audio_pipeline.c > CMakeFiles/__idf_audio_pipeline.dir/audio_pipeline.c.i

esp-idf/audio_pipeline/CMakeFiles/__idf_audio_pipeline.dir/audio_pipeline.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/__idf_audio_pipeline.dir/audio_pipeline.c.s"
	cd /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/esp-idf/audio_pipeline && /home/betelgeuse/.espressif/tools/xtensa-esp-elf/esp-13.2.0_20240530/xtensa-esp-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/betelgeuse/appdata/esp/esp-adf/components/audio_pipeline/audio_pipeline.c -o CMakeFiles/__idf_audio_pipeline.dir/audio_pipeline.c.s

esp-idf/audio_pipeline/CMakeFiles/__idf_audio_pipeline.dir/ringbuf.c.obj: esp-idf/audio_pipeline/CMakeFiles/__idf_audio_pipeline.dir/flags.make
esp-idf/audio_pipeline/CMakeFiles/__idf_audio_pipeline.dir/ringbuf.c.obj: /home/betelgeuse/appdata/esp/esp-adf/components/audio_pipeline/ringbuf.c
esp-idf/audio_pipeline/CMakeFiles/__idf_audio_pipeline.dir/ringbuf.c.obj: esp-idf/audio_pipeline/CMakeFiles/__idf_audio_pipeline.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object esp-idf/audio_pipeline/CMakeFiles/__idf_audio_pipeline.dir/ringbuf.c.obj"
	cd /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/esp-idf/audio_pipeline && /home/betelgeuse/.espressif/tools/xtensa-esp-elf/esp-13.2.0_20240530/xtensa-esp-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT esp-idf/audio_pipeline/CMakeFiles/__idf_audio_pipeline.dir/ringbuf.c.obj -MF CMakeFiles/__idf_audio_pipeline.dir/ringbuf.c.obj.d -o CMakeFiles/__idf_audio_pipeline.dir/ringbuf.c.obj -c /home/betelgeuse/appdata/esp/esp-adf/components/audio_pipeline/ringbuf.c

esp-idf/audio_pipeline/CMakeFiles/__idf_audio_pipeline.dir/ringbuf.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/__idf_audio_pipeline.dir/ringbuf.c.i"
	cd /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/esp-idf/audio_pipeline && /home/betelgeuse/.espressif/tools/xtensa-esp-elf/esp-13.2.0_20240530/xtensa-esp-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/betelgeuse/appdata/esp/esp-adf/components/audio_pipeline/ringbuf.c > CMakeFiles/__idf_audio_pipeline.dir/ringbuf.c.i

esp-idf/audio_pipeline/CMakeFiles/__idf_audio_pipeline.dir/ringbuf.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/__idf_audio_pipeline.dir/ringbuf.c.s"
	cd /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/esp-idf/audio_pipeline && /home/betelgeuse/.espressif/tools/xtensa-esp-elf/esp-13.2.0_20240530/xtensa-esp-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/betelgeuse/appdata/esp/esp-adf/components/audio_pipeline/ringbuf.c -o CMakeFiles/__idf_audio_pipeline.dir/ringbuf.c.s

# Object files for target __idf_audio_pipeline
__idf_audio_pipeline_OBJECTS = \
"CMakeFiles/__idf_audio_pipeline.dir/audio_element.c.obj" \
"CMakeFiles/__idf_audio_pipeline.dir/audio_event_iface.c.obj" \
"CMakeFiles/__idf_audio_pipeline.dir/audio_pipeline.c.obj" \
"CMakeFiles/__idf_audio_pipeline.dir/ringbuf.c.obj"

# External object files for target __idf_audio_pipeline
__idf_audio_pipeline_EXTERNAL_OBJECTS =

esp-idf/audio_pipeline/libaudio_pipeline.a: esp-idf/audio_pipeline/CMakeFiles/__idf_audio_pipeline.dir/audio_element.c.obj
esp-idf/audio_pipeline/libaudio_pipeline.a: esp-idf/audio_pipeline/CMakeFiles/__idf_audio_pipeline.dir/audio_event_iface.c.obj
esp-idf/audio_pipeline/libaudio_pipeline.a: esp-idf/audio_pipeline/CMakeFiles/__idf_audio_pipeline.dir/audio_pipeline.c.obj
esp-idf/audio_pipeline/libaudio_pipeline.a: esp-idf/audio_pipeline/CMakeFiles/__idf_audio_pipeline.dir/ringbuf.c.obj
esp-idf/audio_pipeline/libaudio_pipeline.a: esp-idf/audio_pipeline/CMakeFiles/__idf_audio_pipeline.dir/build.make
esp-idf/audio_pipeline/libaudio_pipeline.a: esp-idf/audio_pipeline/CMakeFiles/__idf_audio_pipeline.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking C static library libaudio_pipeline.a"
	cd /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/esp-idf/audio_pipeline && $(CMAKE_COMMAND) -P CMakeFiles/__idf_audio_pipeline.dir/cmake_clean_target.cmake
	cd /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/esp-idf/audio_pipeline && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/__idf_audio_pipeline.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
esp-idf/audio_pipeline/CMakeFiles/__idf_audio_pipeline.dir/build: esp-idf/audio_pipeline/libaudio_pipeline.a
.PHONY : esp-idf/audio_pipeline/CMakeFiles/__idf_audio_pipeline.dir/build

esp-idf/audio_pipeline/CMakeFiles/__idf_audio_pipeline.dir/clean:
	cd /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/esp-idf/audio_pipeline && $(CMAKE_COMMAND) -P CMakeFiles/__idf_audio_pipeline.dir/cmake_clean.cmake
.PHONY : esp-idf/audio_pipeline/CMakeFiles/__idf_audio_pipeline.dir/clean

esp-idf/audio_pipeline/CMakeFiles/__idf_audio_pipeline.dir/depend:
	cd /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom /home/betelgeuse/appdata/esp/esp-adf/components/audio_pipeline /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/esp-idf/audio_pipeline /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/esp-idf/audio_pipeline/CMakeFiles/__idf_audio_pipeline.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : esp-idf/audio_pipeline/CMakeFiles/__idf_audio_pipeline.dir/depend

