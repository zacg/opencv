# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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

# The program to use to edit the cache.
CMAKE_EDIT_COMMAND = /usr/bin/cmake-gui

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/zac/dev/img/opencv

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/zac/dev/img/opencv/build

# Utility rule file for pch_Generate_opencv_nonfree.

# Include the progress variables for this target.
include modules/nonfree/CMakeFiles/pch_Generate_opencv_nonfree.dir/progress.make

modules/nonfree/CMakeFiles/pch_Generate_opencv_nonfree: modules/nonfree/precomp.hpp.gch/opencv_nonfree_Release.gch

modules/nonfree/precomp.hpp.gch/opencv_nonfree_Release.gch: ../modules/nonfree/src/precomp.hpp
modules/nonfree/precomp.hpp.gch/opencv_nonfree_Release.gch: modules/nonfree/precomp.hpp
modules/nonfree/precomp.hpp.gch/opencv_nonfree_Release.gch: lib/libopencv_nonfree_pch_dephelp.a
	$(CMAKE_COMMAND) -E cmake_progress_report /home/zac/dev/img/opencv/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating precomp.hpp.gch/opencv_nonfree_Release.gch"
	cd /home/zac/dev/img/opencv/build/modules/nonfree && /usr/bin/cmake -E make_directory /home/zac/dev/img/opencv/build/modules/nonfree/precomp.hpp.gch
	cd /home/zac/dev/img/opencv/build/modules/nonfree && /usr/bin/c++ -O3 -DNDEBUG -DNDEBUG -fPIC -I"/home/zac/dev/img/opencv/modules/features2d/include" -I"/home/zac/dev/img/opencv/modules/highgui/include" -I"/home/zac/dev/img/opencv/modules/flann/include" -I"/home/zac/dev/img/opencv/modules/imgproc/include" -I"/home/zac/dev/img/opencv/modules/core/include" -isystem"/home/zac/dev/img/opencv/build/modules/nonfree" -I"/home/zac/dev/img/opencv/modules/nonfree/src" -I"/home/zac/dev/img/opencv/modules/nonfree/include" -isystem"/home/zac/dev/img/opencv/build" -isystem"/usr/include/eigen3" -DHAVE_CVCONFIG_H -DCVAPI_EXPORTS -DHAVE_CVCONFIG_H -W -Wall -Werror=return-type -Werror=non-virtual-dtor -Werror=address -Werror=sequence-point -Wformat -Werror=format-security -Wmissing-declarations -Wundef -Winit-self -Wpointer-arith -Wshadow -Wsign-promo -Wno-narrowing -Wno-delete-non-virtual-dtor -fdiagnostics-show-option -Wno-long-long -pthread -fomit-frame-pointer -msse -msse2 -msse3 -ffunction-sections -x c++-header -o /home/zac/dev/img/opencv/build/modules/nonfree/precomp.hpp.gch/opencv_nonfree_Release.gch /home/zac/dev/img/opencv/build/modules/nonfree/precomp.hpp

modules/nonfree/precomp.hpp: ../modules/nonfree/src/precomp.hpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/zac/dev/img/opencv/build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating precomp.hpp"
	cd /home/zac/dev/img/opencv/build/modules/nonfree && /usr/bin/cmake -E copy /home/zac/dev/img/opencv/modules/nonfree/src/precomp.hpp /home/zac/dev/img/opencv/build/modules/nonfree/precomp.hpp

pch_Generate_opencv_nonfree: modules/nonfree/CMakeFiles/pch_Generate_opencv_nonfree
pch_Generate_opencv_nonfree: modules/nonfree/precomp.hpp.gch/opencv_nonfree_Release.gch
pch_Generate_opencv_nonfree: modules/nonfree/precomp.hpp
pch_Generate_opencv_nonfree: modules/nonfree/CMakeFiles/pch_Generate_opencv_nonfree.dir/build.make
.PHONY : pch_Generate_opencv_nonfree

# Rule to build all files generated by this target.
modules/nonfree/CMakeFiles/pch_Generate_opencv_nonfree.dir/build: pch_Generate_opencv_nonfree
.PHONY : modules/nonfree/CMakeFiles/pch_Generate_opencv_nonfree.dir/build

modules/nonfree/CMakeFiles/pch_Generate_opencv_nonfree.dir/clean:
	cd /home/zac/dev/img/opencv/build/modules/nonfree && $(CMAKE_COMMAND) -P CMakeFiles/pch_Generate_opencv_nonfree.dir/cmake_clean.cmake
.PHONY : modules/nonfree/CMakeFiles/pch_Generate_opencv_nonfree.dir/clean

modules/nonfree/CMakeFiles/pch_Generate_opencv_nonfree.dir/depend:
	cd /home/zac/dev/img/opencv/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/zac/dev/img/opencv /home/zac/dev/img/opencv/modules/nonfree /home/zac/dev/img/opencv/build /home/zac/dev/img/opencv/build/modules/nonfree /home/zac/dev/img/opencv/build/modules/nonfree/CMakeFiles/pch_Generate_opencv_nonfree.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : modules/nonfree/CMakeFiles/pch_Generate_opencv_nonfree.dir/depend

