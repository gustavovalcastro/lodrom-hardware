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
include esp-idf/audio_board/CMakeFiles/__idf_audio_board.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include esp-idf/audio_board/CMakeFiles/__idf_audio_board.dir/compiler_depend.make

# Include the progress variables for this target.
include esp-idf/audio_board/CMakeFiles/__idf_audio_board.dir/progress.make

# Include the compile flags for this target's objects.
include esp-idf/audio_board/CMakeFiles/__idf_audio_board.dir/flags.make

esp-idf/audio_board/CMakeFiles/__idf_audio_board.dir/lyrat_v4_3/board.c.obj: esp-idf/audio_board/CMakeFiles/__idf_audio_board.dir/flags.make
esp-idf/audio_board/CMakeFiles/__idf_audio_board.dir/lyrat_v4_3/board.c.obj: /home/betelgeuse/appdata/esp/esp-adf/components/audio_board/lyrat_v4_3/board.c
esp-idf/audio_board/CMakeFiles/__idf_audio_board.dir/lyrat_v4_3/board.c.obj: esp-idf/audio_board/CMakeFiles/__idf_audio_board.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object esp-idf/audio_board/CMakeFiles/__idf_audio_board.dir/lyrat_v4_3/board.c.obj"
	cd /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/esp-idf/audio_board && /home/betelgeuse/.espressif/tools/xtensa-esp-elf/esp-13.2.0_20240530/xtensa-esp-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT esp-idf/audio_board/CMakeFiles/__idf_audio_board.dir/lyrat_v4_3/board.c.obj -MF CMakeFiles/__idf_audio_board.dir/lyrat_v4_3/board.c.obj.d -o CMakeFiles/__idf_audio_board.dir/lyrat_v4_3/board.c.obj -c /home/betelgeuse/appdata/esp/esp-adf/components/audio_board/lyrat_v4_3/board.c

esp-idf/audio_board/CMakeFiles/__idf_audio_board.dir/lyrat_v4_3/board.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/__idf_audio_board.dir/lyrat_v4_3/board.c.i"
	cd /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/esp-idf/audio_board && /home/betelgeuse/.espressif/tools/xtensa-esp-elf/esp-13.2.0_20240530/xtensa-esp-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/betelgeuse/appdata/esp/esp-adf/components/audio_board/lyrat_v4_3/board.c > CMakeFiles/__idf_audio_board.dir/lyrat_v4_3/board.c.i

esp-idf/audio_board/CMakeFiles/__idf_audio_board.dir/lyrat_v4_3/board.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/__idf_audio_board.dir/lyrat_v4_3/board.c.s"
	cd /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/esp-idf/audio_board && /home/betelgeuse/.espressif/tools/xtensa-esp-elf/esp-13.2.0_20240530/xtensa-esp-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/betelgeuse/appdata/esp/esp-adf/components/audio_board/lyrat_v4_3/board.c -o CMakeFiles/__idf_audio_board.dir/lyrat_v4_3/board.c.s

esp-idf/audio_board/CMakeFiles/__idf_audio_board.dir/lyrat_v4_3/board_pins_config.c.obj: esp-idf/audio_board/CMakeFiles/__idf_audio_board.dir/flags.make
esp-idf/audio_board/CMakeFiles/__idf_audio_board.dir/lyrat_v4_3/board_pins_config.c.obj: /home/betelgeuse/appdata/esp/esp-adf/components/audio_board/lyrat_v4_3/board_pins_config.c
esp-idf/audio_board/CMakeFiles/__idf_audio_board.dir/lyrat_v4_3/board_pins_config.c.obj: esp-idf/audio_board/CMakeFiles/__idf_audio_board.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object esp-idf/audio_board/CMakeFiles/__idf_audio_board.dir/lyrat_v4_3/board_pins_config.c.obj"
	cd /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/esp-idf/audio_board && /home/betelgeuse/.espressif/tools/xtensa-esp-elf/esp-13.2.0_20240530/xtensa-esp-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT esp-idf/audio_board/CMakeFiles/__idf_audio_board.dir/lyrat_v4_3/board_pins_config.c.obj -MF CMakeFiles/__idf_audio_board.dir/lyrat_v4_3/board_pins_config.c.obj.d -o CMakeFiles/__idf_audio_board.dir/lyrat_v4_3/board_pins_config.c.obj -c /home/betelgeuse/appdata/esp/esp-adf/components/audio_board/lyrat_v4_3/board_pins_config.c

esp-idf/audio_board/CMakeFiles/__idf_audio_board.dir/lyrat_v4_3/board_pins_config.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/__idf_audio_board.dir/lyrat_v4_3/board_pins_config.c.i"
	cd /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/esp-idf/audio_board && /home/betelgeuse/.espressif/tools/xtensa-esp-elf/esp-13.2.0_20240530/xtensa-esp-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/betelgeuse/appdata/esp/esp-adf/components/audio_board/lyrat_v4_3/board_pins_config.c > CMakeFiles/__idf_audio_board.dir/lyrat_v4_3/board_pins_config.c.i

esp-idf/audio_board/CMakeFiles/__idf_audio_board.dir/lyrat_v4_3/board_pins_config.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/__idf_audio_board.dir/lyrat_v4_3/board_pins_config.c.s"
	cd /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/esp-idf/audio_board && /home/betelgeuse/.espressif/tools/xtensa-esp-elf/esp-13.2.0_20240530/xtensa-esp-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/betelgeuse/appdata/esp/esp-adf/components/audio_board/lyrat_v4_3/board_pins_config.c -o CMakeFiles/__idf_audio_board.dir/lyrat_v4_3/board_pins_config.c.s

# Object files for target __idf_audio_board
__idf_audio_board_OBJECTS = \
"CMakeFiles/__idf_audio_board.dir/lyrat_v4_3/board.c.obj" \
"CMakeFiles/__idf_audio_board.dir/lyrat_v4_3/board_pins_config.c.obj"

# External object files for target __idf_audio_board
__idf_audio_board_EXTERNAL_OBJECTS =

esp-idf/audio_board/libaudio_board.a: esp-idf/audio_board/CMakeFiles/__idf_audio_board.dir/lyrat_v4_3/board.c.obj
esp-idf/audio_board/libaudio_board.a: esp-idf/audio_board/CMakeFiles/__idf_audio_board.dir/lyrat_v4_3/board_pins_config.c.obj
esp-idf/audio_board/libaudio_board.a: esp-idf/audio_board/CMakeFiles/__idf_audio_board.dir/build.make
esp-idf/audio_board/libaudio_board.a: esp-idf/audio_board/CMakeFiles/__idf_audio_board.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C static library libaudio_board.a"
	cd /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/esp-idf/audio_board && $(CMAKE_COMMAND) -P CMakeFiles/__idf_audio_board.dir/cmake_clean_target.cmake
	cd /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/esp-idf/audio_board && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/__idf_audio_board.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
esp-idf/audio_board/CMakeFiles/__idf_audio_board.dir/build: esp-idf/audio_board/libaudio_board.a
.PHONY : esp-idf/audio_board/CMakeFiles/__idf_audio_board.dir/build

esp-idf/audio_board/CMakeFiles/__idf_audio_board.dir/clean:
	cd /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/esp-idf/audio_board && $(CMAKE_COMMAND) -P CMakeFiles/__idf_audio_board.dir/cmake_clean.cmake
.PHONY : esp-idf/audio_board/CMakeFiles/__idf_audio_board.dir/clean

esp-idf/audio_board/CMakeFiles/__idf_audio_board.dir/depend:
	cd /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom /home/betelgeuse/appdata/esp/esp-adf/components/audio_board /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/esp-idf/audio_board /home/betelgeuse/projects/puc/lodrom/lodrom-hardware/lodrom/build/esp-idf/audio_board/CMakeFiles/__idf_audio_board.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : esp-idf/audio_board/CMakeFiles/__idf_audio_board.dir/depend

