# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.12

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
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/nex/Документы/Work/TI-Engine/TI-PreCompiler

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/nex/Документы/Work/TI-Engine/TI-PreCompiler/build

# Include any dependencies generated for this target.
include CMakeFiles/TI-PreCompiler.exec.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/TI-PreCompiler.exec.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/TI-PreCompiler.exec.dir/flags.make

CMakeFiles/TI-PreCompiler.exec.dir/src/main.cpp.o: CMakeFiles/TI-PreCompiler.exec.dir/flags.make
CMakeFiles/TI-PreCompiler.exec.dir/src/main.cpp.o: ../src/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nex/Документы/Work/TI-Engine/TI-PreCompiler/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/TI-PreCompiler.exec.dir/src/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/TI-PreCompiler.exec.dir/src/main.cpp.o -c /home/nex/Документы/Work/TI-Engine/TI-PreCompiler/src/main.cpp

CMakeFiles/TI-PreCompiler.exec.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TI-PreCompiler.exec.dir/src/main.cpp.i"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_CXX_CREATE_PREPROCESSED_SOURCE

CMakeFiles/TI-PreCompiler.exec.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TI-PreCompiler.exec.dir/src/main.cpp.s"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_CXX_CREATE_ASSEMBLY_SOURCE

# Object files for target TI-PreCompiler.exec
TI__PreCompiler_exec_OBJECTS = \
"CMakeFiles/TI-PreCompiler.exec.dir/src/main.cpp.o"

# External object files for target TI-PreCompiler.exec
TI__PreCompiler_exec_EXTERNAL_OBJECTS =

TI-PreCompiler.exec: CMakeFiles/TI-PreCompiler.exec.dir/src/main.cpp.o
TI-PreCompiler.exec: CMakeFiles/TI-PreCompiler.exec.dir/build.make
TI-PreCompiler.exec: CMakeFiles/TI-PreCompiler.exec.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/nex/Документы/Work/TI-Engine/TI-PreCompiler/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable TI-PreCompiler.exec"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/TI-PreCompiler.exec.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/TI-PreCompiler.exec.dir/build: TI-PreCompiler.exec

.PHONY : CMakeFiles/TI-PreCompiler.exec.dir/build

CMakeFiles/TI-PreCompiler.exec.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/TI-PreCompiler.exec.dir/cmake_clean.cmake
.PHONY : CMakeFiles/TI-PreCompiler.exec.dir/clean

CMakeFiles/TI-PreCompiler.exec.dir/depend:
	cd /home/nex/Документы/Work/TI-Engine/TI-PreCompiler/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/nex/Документы/Work/TI-Engine/TI-PreCompiler /home/nex/Документы/Work/TI-Engine/TI-PreCompiler /home/nex/Документы/Work/TI-Engine/TI-PreCompiler/build /home/nex/Документы/Work/TI-Engine/TI-PreCompiler/build /home/nex/Документы/Work/TI-Engine/TI-PreCompiler/build/CMakeFiles/TI-PreCompiler.exec.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/TI-PreCompiler.exec.dir/depend
