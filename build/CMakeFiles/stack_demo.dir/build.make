# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

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
CMAKE_SOURCE_DIR = /home/ifeoluwa-shoyoye/cos340/stack

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ifeoluwa-shoyoye/cos340/stack/build

# Include any dependencies generated for this target.
include CMakeFiles/stack_demo.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/stack_demo.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/stack_demo.dir/flags.make

CMakeFiles/stack_demo.dir/stack_demo.cpp.o: CMakeFiles/stack_demo.dir/flags.make
CMakeFiles/stack_demo.dir/stack_demo.cpp.o: ../stack_demo.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ifeoluwa-shoyoye/cos340/stack/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/stack_demo.dir/stack_demo.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/stack_demo.dir/stack_demo.cpp.o -c /home/ifeoluwa-shoyoye/cos340/stack/stack_demo.cpp

CMakeFiles/stack_demo.dir/stack_demo.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/stack_demo.dir/stack_demo.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ifeoluwa-shoyoye/cos340/stack/stack_demo.cpp > CMakeFiles/stack_demo.dir/stack_demo.cpp.i

CMakeFiles/stack_demo.dir/stack_demo.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/stack_demo.dir/stack_demo.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ifeoluwa-shoyoye/cos340/stack/stack_demo.cpp -o CMakeFiles/stack_demo.dir/stack_demo.cpp.s

CMakeFiles/stack_demo.dir/stack_demo.cpp.o.requires:

.PHONY : CMakeFiles/stack_demo.dir/stack_demo.cpp.o.requires

CMakeFiles/stack_demo.dir/stack_demo.cpp.o.provides: CMakeFiles/stack_demo.dir/stack_demo.cpp.o.requires
	$(MAKE) -f CMakeFiles/stack_demo.dir/build.make CMakeFiles/stack_demo.dir/stack_demo.cpp.o.provides.build
.PHONY : CMakeFiles/stack_demo.dir/stack_demo.cpp.o.provides

CMakeFiles/stack_demo.dir/stack_demo.cpp.o.provides.build: CMakeFiles/stack_demo.dir/stack_demo.cpp.o


CMakeFiles/stack_demo.dir/stack_demo_autogen/mocs_compilation.cpp.o: CMakeFiles/stack_demo.dir/flags.make
CMakeFiles/stack_demo.dir/stack_demo_autogen/mocs_compilation.cpp.o: stack_demo_autogen/mocs_compilation.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ifeoluwa-shoyoye/cos340/stack/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/stack_demo.dir/stack_demo_autogen/mocs_compilation.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/stack_demo.dir/stack_demo_autogen/mocs_compilation.cpp.o -c /home/ifeoluwa-shoyoye/cos340/stack/build/stack_demo_autogen/mocs_compilation.cpp

CMakeFiles/stack_demo.dir/stack_demo_autogen/mocs_compilation.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/stack_demo.dir/stack_demo_autogen/mocs_compilation.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ifeoluwa-shoyoye/cos340/stack/build/stack_demo_autogen/mocs_compilation.cpp > CMakeFiles/stack_demo.dir/stack_demo_autogen/mocs_compilation.cpp.i

CMakeFiles/stack_demo.dir/stack_demo_autogen/mocs_compilation.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/stack_demo.dir/stack_demo_autogen/mocs_compilation.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ifeoluwa-shoyoye/cos340/stack/build/stack_demo_autogen/mocs_compilation.cpp -o CMakeFiles/stack_demo.dir/stack_demo_autogen/mocs_compilation.cpp.s

CMakeFiles/stack_demo.dir/stack_demo_autogen/mocs_compilation.cpp.o.requires:

.PHONY : CMakeFiles/stack_demo.dir/stack_demo_autogen/mocs_compilation.cpp.o.requires

CMakeFiles/stack_demo.dir/stack_demo_autogen/mocs_compilation.cpp.o.provides: CMakeFiles/stack_demo.dir/stack_demo_autogen/mocs_compilation.cpp.o.requires
	$(MAKE) -f CMakeFiles/stack_demo.dir/build.make CMakeFiles/stack_demo.dir/stack_demo_autogen/mocs_compilation.cpp.o.provides.build
.PHONY : CMakeFiles/stack_demo.dir/stack_demo_autogen/mocs_compilation.cpp.o.provides

CMakeFiles/stack_demo.dir/stack_demo_autogen/mocs_compilation.cpp.o.provides.build: CMakeFiles/stack_demo.dir/stack_demo_autogen/mocs_compilation.cpp.o


# Object files for target stack_demo
stack_demo_OBJECTS = \
"CMakeFiles/stack_demo.dir/stack_demo.cpp.o" \
"CMakeFiles/stack_demo.dir/stack_demo_autogen/mocs_compilation.cpp.o"

# External object files for target stack_demo
stack_demo_EXTERNAL_OBJECTS =

stack_demo: CMakeFiles/stack_demo.dir/stack_demo.cpp.o
stack_demo: CMakeFiles/stack_demo.dir/stack_demo_autogen/mocs_compilation.cpp.o
stack_demo: CMakeFiles/stack_demo.dir/build.make
stack_demo: libstack.a
stack_demo: assertexcept/libassertexcept.a
stack_demo: CMakeFiles/stack_demo.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ifeoluwa-shoyoye/cos340/stack/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable stack_demo"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/stack_demo.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/stack_demo.dir/build: stack_demo

.PHONY : CMakeFiles/stack_demo.dir/build

CMakeFiles/stack_demo.dir/requires: CMakeFiles/stack_demo.dir/stack_demo.cpp.o.requires
CMakeFiles/stack_demo.dir/requires: CMakeFiles/stack_demo.dir/stack_demo_autogen/mocs_compilation.cpp.o.requires

.PHONY : CMakeFiles/stack_demo.dir/requires

CMakeFiles/stack_demo.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/stack_demo.dir/cmake_clean.cmake
.PHONY : CMakeFiles/stack_demo.dir/clean

CMakeFiles/stack_demo.dir/depend:
	cd /home/ifeoluwa-shoyoye/cos340/stack/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ifeoluwa-shoyoye/cos340/stack /home/ifeoluwa-shoyoye/cos340/stack /home/ifeoluwa-shoyoye/cos340/stack/build /home/ifeoluwa-shoyoye/cos340/stack/build /home/ifeoluwa-shoyoye/cos340/stack/build/CMakeFiles/stack_demo.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/stack_demo.dir/depend
