# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
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
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/s2eghbali/Desktop/nbt/nbt-master

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/s2eghbali/Desktop/nbt/nbt-master

# Include any dependencies generated for this target.
include CMakeFiles/nbt.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/nbt.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/nbt.dir/flags.make

CMakeFiles/nbt.dir/src/node.cpp.o: CMakeFiles/nbt.dir/flags.make
CMakeFiles/nbt.dir/src/node.cpp.o: src/node.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/s2eghbali/Desktop/nbt/nbt-master/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/nbt.dir/src/node.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/nbt.dir/src/node.cpp.o -c /home/s2eghbali/Desktop/nbt/nbt-master/src/node.cpp

CMakeFiles/nbt.dir/src/node.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/nbt.dir/src/node.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/s2eghbali/Desktop/nbt/nbt-master/src/node.cpp > CMakeFiles/nbt.dir/src/node.cpp.i

CMakeFiles/nbt.dir/src/node.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/nbt.dir/src/node.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/s2eghbali/Desktop/nbt/nbt-master/src/node.cpp -o CMakeFiles/nbt.dir/src/node.cpp.s

CMakeFiles/nbt.dir/src/node.cpp.o.requires:

.PHONY : CMakeFiles/nbt.dir/src/node.cpp.o.requires

CMakeFiles/nbt.dir/src/node.cpp.o.provides: CMakeFiles/nbt.dir/src/node.cpp.o.requires
	$(MAKE) -f CMakeFiles/nbt.dir/build.make CMakeFiles/nbt.dir/src/node.cpp.o.provides.build
.PHONY : CMakeFiles/nbt.dir/src/node.cpp.o.provides

CMakeFiles/nbt.dir/src/node.cpp.o.provides.build: CMakeFiles/nbt.dir/src/node.cpp.o


CMakeFiles/nbt.dir/src/root_node.cpp.o: CMakeFiles/nbt.dir/flags.make
CMakeFiles/nbt.dir/src/root_node.cpp.o: src/root_node.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/s2eghbali/Desktop/nbt/nbt-master/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/nbt.dir/src/root_node.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/nbt.dir/src/root_node.cpp.o -c /home/s2eghbali/Desktop/nbt/nbt-master/src/root_node.cpp

CMakeFiles/nbt.dir/src/root_node.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/nbt.dir/src/root_node.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/s2eghbali/Desktop/nbt/nbt-master/src/root_node.cpp > CMakeFiles/nbt.dir/src/root_node.cpp.i

CMakeFiles/nbt.dir/src/root_node.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/nbt.dir/src/root_node.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/s2eghbali/Desktop/nbt/nbt-master/src/root_node.cpp -o CMakeFiles/nbt.dir/src/root_node.cpp.s

CMakeFiles/nbt.dir/src/root_node.cpp.o.requires:

.PHONY : CMakeFiles/nbt.dir/src/root_node.cpp.o.requires

CMakeFiles/nbt.dir/src/root_node.cpp.o.provides: CMakeFiles/nbt.dir/src/root_node.cpp.o.requires
	$(MAKE) -f CMakeFiles/nbt.dir/build.make CMakeFiles/nbt.dir/src/root_node.cpp.o.provides.build
.PHONY : CMakeFiles/nbt.dir/src/root_node.cpp.o.provides

CMakeFiles/nbt.dir/src/root_node.cpp.o.provides.build: CMakeFiles/nbt.dir/src/root_node.cpp.o


CMakeFiles/nbt.dir/src/loadVar.cpp.o: CMakeFiles/nbt.dir/flags.make
CMakeFiles/nbt.dir/src/loadVar.cpp.o: src/loadVar.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/s2eghbali/Desktop/nbt/nbt-master/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/nbt.dir/src/loadVar.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/nbt.dir/src/loadVar.cpp.o -c /home/s2eghbali/Desktop/nbt/nbt-master/src/loadVar.cpp

CMakeFiles/nbt.dir/src/loadVar.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/nbt.dir/src/loadVar.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/s2eghbali/Desktop/nbt/nbt-master/src/loadVar.cpp > CMakeFiles/nbt.dir/src/loadVar.cpp.i

CMakeFiles/nbt.dir/src/loadVar.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/nbt.dir/src/loadVar.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/s2eghbali/Desktop/nbt/nbt-master/src/loadVar.cpp -o CMakeFiles/nbt.dir/src/loadVar.cpp.s

CMakeFiles/nbt.dir/src/loadVar.cpp.o.requires:

.PHONY : CMakeFiles/nbt.dir/src/loadVar.cpp.o.requires

CMakeFiles/nbt.dir/src/loadVar.cpp.o.provides: CMakeFiles/nbt.dir/src/loadVar.cpp.o.requires
	$(MAKE) -f CMakeFiles/nbt.dir/build.make CMakeFiles/nbt.dir/src/loadVar.cpp.o.provides.build
.PHONY : CMakeFiles/nbt.dir/src/loadVar.cpp.o.provides

CMakeFiles/nbt.dir/src/loadVar.cpp.o.provides.build: CMakeFiles/nbt.dir/src/loadVar.cpp.o


CMakeFiles/nbt.dir/test_create_tree.cpp.o: CMakeFiles/nbt.dir/flags.make
CMakeFiles/nbt.dir/test_create_tree.cpp.o: test_create_tree.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/s2eghbali/Desktop/nbt/nbt-master/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/nbt.dir/test_create_tree.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/nbt.dir/test_create_tree.cpp.o -c /home/s2eghbali/Desktop/nbt/nbt-master/test_create_tree.cpp

CMakeFiles/nbt.dir/test_create_tree.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/nbt.dir/test_create_tree.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/s2eghbali/Desktop/nbt/nbt-master/test_create_tree.cpp > CMakeFiles/nbt.dir/test_create_tree.cpp.i

CMakeFiles/nbt.dir/test_create_tree.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/nbt.dir/test_create_tree.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/s2eghbali/Desktop/nbt/nbt-master/test_create_tree.cpp -o CMakeFiles/nbt.dir/test_create_tree.cpp.s

CMakeFiles/nbt.dir/test_create_tree.cpp.o.requires:

.PHONY : CMakeFiles/nbt.dir/test_create_tree.cpp.o.requires

CMakeFiles/nbt.dir/test_create_tree.cpp.o.provides: CMakeFiles/nbt.dir/test_create_tree.cpp.o.requires
	$(MAKE) -f CMakeFiles/nbt.dir/build.make CMakeFiles/nbt.dir/test_create_tree.cpp.o.provides.build
.PHONY : CMakeFiles/nbt.dir/test_create_tree.cpp.o.provides

CMakeFiles/nbt.dir/test_create_tree.cpp.o.provides.build: CMakeFiles/nbt.dir/test_create_tree.cpp.o


# Object files for target nbt
nbt_OBJECTS = \
"CMakeFiles/nbt.dir/src/node.cpp.o" \
"CMakeFiles/nbt.dir/src/root_node.cpp.o" \
"CMakeFiles/nbt.dir/src/loadVar.cpp.o" \
"CMakeFiles/nbt.dir/test_create_tree.cpp.o"

# External object files for target nbt
nbt_EXTERNAL_OBJECTS =

nbt: CMakeFiles/nbt.dir/src/node.cpp.o
nbt: CMakeFiles/nbt.dir/src/root_node.cpp.o
nbt: CMakeFiles/nbt.dir/src/loadVar.cpp.o
nbt: CMakeFiles/nbt.dir/test_create_tree.cpp.o
nbt: CMakeFiles/nbt.dir/build.make
nbt: /usr/lib/x86_64-linux-gnu/libhdf5.so
nbt: CMakeFiles/nbt.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/s2eghbali/Desktop/nbt/nbt-master/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX executable nbt"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/nbt.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/nbt.dir/build: nbt

.PHONY : CMakeFiles/nbt.dir/build

CMakeFiles/nbt.dir/requires: CMakeFiles/nbt.dir/src/node.cpp.o.requires
CMakeFiles/nbt.dir/requires: CMakeFiles/nbt.dir/src/root_node.cpp.o.requires
CMakeFiles/nbt.dir/requires: CMakeFiles/nbt.dir/src/loadVar.cpp.o.requires
CMakeFiles/nbt.dir/requires: CMakeFiles/nbt.dir/test_create_tree.cpp.o.requires

.PHONY : CMakeFiles/nbt.dir/requires

CMakeFiles/nbt.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/nbt.dir/cmake_clean.cmake
.PHONY : CMakeFiles/nbt.dir/clean

CMakeFiles/nbt.dir/depend:
	cd /home/s2eghbali/Desktop/nbt/nbt-master && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/s2eghbali/Desktop/nbt/nbt-master /home/s2eghbali/Desktop/nbt/nbt-master /home/s2eghbali/Desktop/nbt/nbt-master /home/s2eghbali/Desktop/nbt/nbt-master /home/s2eghbali/Desktop/nbt/nbt-master/CMakeFiles/nbt.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/nbt.dir/depend
