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
include executables/CMakeFiles/task0.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include executables/CMakeFiles/task0.dir/compiler_depend.make

# Include the progress variables for this target.
include executables/CMakeFiles/task0.dir/progress.make

# Include the compile flags for this target's objects.
include executables/CMakeFiles/task0.dir/flags.make

executables/CMakeFiles/task0.dir/task0.cpp.o: executables/CMakeFiles/task0.dir/flags.make
executables/CMakeFiles/task0.dir/task0.cpp.o: executables/task0.cpp
executables/CMakeFiles/task0.dir/task0.cpp.o: executables/CMakeFiles/task0.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/umutyalcinn/TAU/INF514/Aufgaben/Raytracer/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object executables/CMakeFiles/task0.dir/task0.cpp.o"
	cd /Users/umutyalcinn/TAU/INF514/Aufgaben/Raytracer/executables && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT executables/CMakeFiles/task0.dir/task0.cpp.o -MF CMakeFiles/task0.dir/task0.cpp.o.d -o CMakeFiles/task0.dir/task0.cpp.o -c /Users/umutyalcinn/TAU/INF514/Aufgaben/Raytracer/executables/task0.cpp

executables/CMakeFiles/task0.dir/task0.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/task0.dir/task0.cpp.i"
	cd /Users/umutyalcinn/TAU/INF514/Aufgaben/Raytracer/executables && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/umutyalcinn/TAU/INF514/Aufgaben/Raytracer/executables/task0.cpp > CMakeFiles/task0.dir/task0.cpp.i

executables/CMakeFiles/task0.dir/task0.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/task0.dir/task0.cpp.s"
	cd /Users/umutyalcinn/TAU/INF514/Aufgaben/Raytracer/executables && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/umutyalcinn/TAU/INF514/Aufgaben/Raytracer/executables/task0.cpp -o CMakeFiles/task0.dir/task0.cpp.s

# Object files for target task0
task0_OBJECTS = \
"CMakeFiles/task0.dir/task0.cpp.o"

# External object files for target task0
task0_EXTERNAL_OBJECTS =

task0: executables/CMakeFiles/task0.dir/task0.cpp.o
task0: executables/CMakeFiles/task0.dir/build.make
task0: src/libcgraytracer.a
task0: executables/CMakeFiles/task0.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/umutyalcinn/TAU/INF514/Aufgaben/Raytracer/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../task0"
	cd /Users/umutyalcinn/TAU/INF514/Aufgaben/Raytracer/executables && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/task0.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
executables/CMakeFiles/task0.dir/build: task0
.PHONY : executables/CMakeFiles/task0.dir/build

executables/CMakeFiles/task0.dir/clean:
	cd /Users/umutyalcinn/TAU/INF514/Aufgaben/Raytracer/executables && $(CMAKE_COMMAND) -P CMakeFiles/task0.dir/cmake_clean.cmake
.PHONY : executables/CMakeFiles/task0.dir/clean

executables/CMakeFiles/task0.dir/depend:
	cd /Users/umutyalcinn/TAU/INF514/Aufgaben/Raytracer && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/umutyalcinn/TAU/INF514/Aufgaben/Raytracer /Users/umutyalcinn/TAU/INF514/Aufgaben/Raytracer/executables /Users/umutyalcinn/TAU/INF514/Aufgaben/Raytracer /Users/umutyalcinn/TAU/INF514/Aufgaben/Raytracer/executables /Users/umutyalcinn/TAU/INF514/Aufgaben/Raytracer/executables/CMakeFiles/task0.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : executables/CMakeFiles/task0.dir/depend

