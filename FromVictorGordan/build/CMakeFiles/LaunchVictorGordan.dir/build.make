# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 4.0

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\CMake\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\CMake\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\uyand\Desktop\OpenGL\FromVictorGordan

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\uyand\Desktop\OpenGL\FromVictorGordan\build

# Include any dependencies generated for this target.
include CMakeFiles/LaunchVictorGordan.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/LaunchVictorGordan.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/LaunchVictorGordan.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/LaunchVictorGordan.dir/flags.make

CMakeFiles/LaunchVictorGordan.dir/codegen:
.PHONY : CMakeFiles/LaunchVictorGordan.dir/codegen

CMakeFiles/LaunchVictorGordan.dir/Src/Main.cpp.obj: CMakeFiles/LaunchVictorGordan.dir/flags.make
CMakeFiles/LaunchVictorGordan.dir/Src/Main.cpp.obj: CMakeFiles/LaunchVictorGordan.dir/includes_CXX.rsp
CMakeFiles/LaunchVictorGordan.dir/Src/Main.cpp.obj: C:/Users/uyand/Desktop/OpenGL/FromVictorGordan/Src/Main.cpp
CMakeFiles/LaunchVictorGordan.dir/Src/Main.cpp.obj: CMakeFiles/LaunchVictorGordan.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\Users\uyand\Desktop\OpenGL\FromVictorGordan\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/LaunchVictorGordan.dir/Src/Main.cpp.obj"
	C:\Users\uyand\Documents\Applications\Mingw64\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/LaunchVictorGordan.dir/Src/Main.cpp.obj -MF CMakeFiles\LaunchVictorGordan.dir\Src\Main.cpp.obj.d -o CMakeFiles\LaunchVictorGordan.dir\Src\Main.cpp.obj -c C:\Users\uyand\Desktop\OpenGL\FromVictorGordan\Src\Main.cpp

CMakeFiles/LaunchVictorGordan.dir/Src/Main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/LaunchVictorGordan.dir/Src/Main.cpp.i"
	C:\Users\uyand\Documents\Applications\Mingw64\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\uyand\Desktop\OpenGL\FromVictorGordan\Src\Main.cpp > CMakeFiles\LaunchVictorGordan.dir\Src\Main.cpp.i

CMakeFiles/LaunchVictorGordan.dir/Src/Main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/LaunchVictorGordan.dir/Src/Main.cpp.s"
	C:\Users\uyand\Documents\Applications\Mingw64\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\uyand\Desktop\OpenGL\FromVictorGordan\Src\Main.cpp -o CMakeFiles\LaunchVictorGordan.dir\Src\Main.cpp.s

CMakeFiles/LaunchVictorGordan.dir/Src/Glad/src/glad.c.obj: CMakeFiles/LaunchVictorGordan.dir/flags.make
CMakeFiles/LaunchVictorGordan.dir/Src/Glad/src/glad.c.obj: CMakeFiles/LaunchVictorGordan.dir/includes_C.rsp
CMakeFiles/LaunchVictorGordan.dir/Src/Glad/src/glad.c.obj: C:/Users/uyand/Desktop/OpenGL/FromVictorGordan/Src/Glad/src/glad.c
CMakeFiles/LaunchVictorGordan.dir/Src/Glad/src/glad.c.obj: CMakeFiles/LaunchVictorGordan.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\Users\uyand\Desktop\OpenGL\FromVictorGordan\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/LaunchVictorGordan.dir/Src/Glad/src/glad.c.obj"
	C:\Users\uyand\Documents\Applications\Mingw64\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/LaunchVictorGordan.dir/Src/Glad/src/glad.c.obj -MF CMakeFiles\LaunchVictorGordan.dir\Src\Glad\src\glad.c.obj.d -o CMakeFiles\LaunchVictorGordan.dir\Src\Glad\src\glad.c.obj -c C:\Users\uyand\Desktop\OpenGL\FromVictorGordan\Src\Glad\src\glad.c

CMakeFiles/LaunchVictorGordan.dir/Src/Glad/src/glad.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/LaunchVictorGordan.dir/Src/Glad/src/glad.c.i"
	C:\Users\uyand\Documents\Applications\Mingw64\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\uyand\Desktop\OpenGL\FromVictorGordan\Src\Glad\src\glad.c > CMakeFiles\LaunchVictorGordan.dir\Src\Glad\src\glad.c.i

CMakeFiles/LaunchVictorGordan.dir/Src/Glad/src/glad.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/LaunchVictorGordan.dir/Src/Glad/src/glad.c.s"
	C:\Users\uyand\Documents\Applications\Mingw64\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\Users\uyand\Desktop\OpenGL\FromVictorGordan\Src\Glad\src\glad.c -o CMakeFiles\LaunchVictorGordan.dir\Src\Glad\src\glad.c.s

# Object files for target LaunchVictorGordan
LaunchVictorGordan_OBJECTS = \
"CMakeFiles/LaunchVictorGordan.dir/Src/Main.cpp.obj" \
"CMakeFiles/LaunchVictorGordan.dir/Src/Glad/src/glad.c.obj"

# External object files for target LaunchVictorGordan
LaunchVictorGordan_EXTERNAL_OBJECTS =

LaunchVictorGordan.exe: CMakeFiles/LaunchVictorGordan.dir/Src/Main.cpp.obj
LaunchVictorGordan.exe: CMakeFiles/LaunchVictorGordan.dir/Src/Glad/src/glad.c.obj
LaunchVictorGordan.exe: CMakeFiles/LaunchVictorGordan.dir/build.make
LaunchVictorGordan.exe: CMakeFiles/LaunchVictorGordan.dir/linkLibs.rsp
LaunchVictorGordan.exe: CMakeFiles/LaunchVictorGordan.dir/objects1.rsp
LaunchVictorGordan.exe: CMakeFiles/LaunchVictorGordan.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=C:\Users\uyand\Desktop\OpenGL\FromVictorGordan\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable LaunchVictorGordan.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\LaunchVictorGordan.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/LaunchVictorGordan.dir/build: LaunchVictorGordan.exe
.PHONY : CMakeFiles/LaunchVictorGordan.dir/build

CMakeFiles/LaunchVictorGordan.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\LaunchVictorGordan.dir\cmake_clean.cmake
.PHONY : CMakeFiles/LaunchVictorGordan.dir/clean

CMakeFiles/LaunchVictorGordan.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\uyand\Desktop\OpenGL\FromVictorGordan C:\Users\uyand\Desktop\OpenGL\FromVictorGordan C:\Users\uyand\Desktop\OpenGL\FromVictorGordan\build C:\Users\uyand\Desktop\OpenGL\FromVictorGordan\build C:\Users\uyand\Desktop\OpenGL\FromVictorGordan\build\CMakeFiles\LaunchVictorGordan.dir\DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/LaunchVictorGordan.dir/depend

