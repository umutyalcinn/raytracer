# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.29

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
CMAKE_COMMAND = /opt/homebrew/Cellar/cmake/3.29.0/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/Cellar/cmake/3.29.0/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/umutyalcinn/TAU/INF514/Aufgaben/Raytracer

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/umutyalcinn/TAU/INF514/Aufgaben/Raytracer

# Include any dependencies generated for this target.
include executables/CMakeFiles/main.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include executables/CMakeFiles/main.dir/compiler_depend.make

# Include the progress variables for this target.
include executables/CMakeFiles/main.dir/progress.make

# Include the compile flags for this target's objects.
include executables/CMakeFiles/main.dir/flags.make

executables/CMakeFiles/main.dir/main.cpp.o: executables/CMakeFiles/main.dir/flags.make
executables/CMakeFiles/main.dir/main.cpp.o: executables/main.cpp
executables/CMakeFiles/main.dir/main.cpp.o: executables/CMakeFiles/main.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/umutyalcinn/TAU/INF514/Aufgaben/Raytracer/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object executables/CMakeFiles/main.dir/main.cpp.o"
	cd /Users/umutyalcinn/TAU/INF514/Aufgaben/Raytracer/executables && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT executables/CMakeFiles/main.dir/main.cpp.o -MF CMakeFiles/main.dir/main.cpp.o.d -o CMakeFiles/main.dir/main.cpp.o -c /Users/umutyalcinn/TAU/INF514/Aufgaben/Raytracer/executables/main.cpp

executables/CMakeFiles/main.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/main.dir/main.cpp.i"
	cd /Users/umutyalcinn/TAU/INF514/Aufgaben/Raytracer/executables && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/umutyalcinn/TAU/INF514/Aufgaben/Raytracer/executables/main.cpp > CMakeFiles/main.dir/main.cpp.i

executables/CMakeFiles/main.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/main.dir/main.cpp.s"
	cd /Users/umutyalcinn/TAU/INF514/Aufgaben/Raytracer/executables && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/umutyalcinn/TAU/INF514/Aufgaben/Raytracer/executables/main.cpp -o CMakeFiles/main.dir/main.cpp.s

# Object files for target main
main_OBJECTS = \
"CMakeFiles/main.dir/main.cpp.o"

# External object files for target main
main_EXTERNAL_OBJECTS =

main: executables/CMakeFiles/main.dir/main.cpp.o
main: executables/CMakeFiles/main.dir/build.make
main: src/libcgraytracer.a
main: executables/CMakeFiles/main.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/umutyalcinn/TAU/INF514/Aufgaben/Raytracer/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../main"
	cd /Users/umutyalcinn/TAU/INF514/Aufgaben/Raytracer/executables && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/main.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
executables/CMakeFiles/main.dir/build: main
.PHONY : executables/CMakeFiles/main.dir/build

executables/CMakeFiles/main.dir/clean:
	cd /Users/umutyalcinn/TAU/INF514/Aufgaben/Raytracer/executables && $(CMAKE_COMMAND) -P CMakeFiles/main.dir/cmake_clean.cmake
.PHONY : executables/CMakeFiles/main.dir/clean

executables/CMakeFiles/main.dir/depend:
	cd /Users/umutyalcinn/TAU/INF514/Aufgaben/Raytracer && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/umutyalcinn/TAU/INF514/Aufgaben/Raytracer /Users/umutyalcinn/TAU/INF514/Aufgaben/Raytracer/executables /Users/umutyalcinn/TAU/INF514/Aufgaben/Raytracer /Users/umutyalcinn/TAU/INF514/Aufgaben/Raytracer/executables /Users/umutyalcinn/TAU/INF514/Aufgaben/Raytracer/executables/CMakeFiles/main.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : executables/CMakeFiles/main.dir/depend

