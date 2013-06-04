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

# Utility rule file for pch_Generate_opencv_perf_highgui.

# Include the progress variables for this target.
include modules/highgui/CMakeFiles/pch_Generate_opencv_perf_highgui.dir/progress.make

modules/highgui/CMakeFiles/pch_Generate_opencv_perf_highgui: modules/highgui/perf_precomp.hpp.gch/opencv_perf_highgui_Release.gch

modules/highgui/perf_precomp.hpp.gch/opencv_perf_highgui_Release.gch: ../modules/highgui/perf/perf_precomp.hpp
modules/highgui/perf_precomp.hpp.gch/opencv_perf_highgui_Release.gch: modules/highgui/perf_precomp.hpp
modules/highgui/perf_precomp.hpp.gch/opencv_perf_highgui_Release.gch: lib/libopencv_perf_highgui_pch_dephelp.a
	$(CMAKE_COMMAND) -E cmake_progress_report /home/zac/dev/img/opencv/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating perf_precomp.hpp.gch/opencv_perf_highgui_Release.gch"
	cd /home/zac/dev/img/opencv/build/modules/highgui && /usr/bin/cmake -E make_directory /home/zac/dev/img/opencv/build/modules/highgui/perf_precomp.hpp.gch
	cd /home/zac/dev/img/opencv/build/modules/highgui && /usr/bin/c++ -O3 -DNDEBUG -DNDEBUG -I"/home/zac/dev/img/opencv/modules/highgui/perf" -I"/home/zac/dev/img/opencv/modules/features2d/include" -I"/home/zac/dev/img/opencv/modules/highgui/include" -I"/home/zac/dev/img/opencv/modules/flann/include" -I"/home/zac/dev/img/opencv/modules/imgproc/include" -I"/home/zac/dev/img/opencv/modules/core/include" -I"/home/zac/dev/img/opencv/modules/highgui/include" -I"/home/zac/dev/img/opencv/modules/ts/include" -I"/home/zac/dev/img/opencv/modules/highgui/include" -I"/home/zac/dev/img/opencv/modules/imgproc/include" -I"/home/zac/dev/img/opencv/modules/core/include" -isystem"/home/zac/dev/img/opencv/build/modules/highgui" -I"/home/zac/dev/img/opencv/modules/highgui/src" -I"/home/zac/dev/img/opencv/modules/highgui/include" -I"/home/zac/dev/img/opencv/modules/highgui/test" -I"/home/zac/dev/img/opencv/modules/features2d/include" -I"/home/zac/dev/img/opencv/modules/highgui/include" -I"/home/zac/dev/img/opencv/modules/flann/include" -I"/home/zac/dev/img/opencv/modules/imgproc/include" -I"/home/zac/dev/img/opencv/modules/core/include" -I"/home/zac/dev/img/opencv/modules/highgui/include" -I"/home/zac/dev/img/opencv/modules/ts/include" -I"/home/zac/dev/img/opencv/modules/highgui/include" -I"/home/zac/dev/img/opencv/modules/imgproc/include" -I"/home/zac/dev/img/opencv/modules/core/include" -isystem"/home/zac/dev/img/opencv/build/modules/highgui" -I"/home/zac/dev/img/opencv/modules/highgui/src" -I"/home/zac/dev/img/opencv/modules/highgui/include" -I"/home/zac/dev/img/opencv/modules/imgproc/include" -I"/home/zac/dev/img/opencv/modules/core/include" -isystem"/home/zac/dev/img/opencv/build/modules/highgui" -I"/home/zac/dev/img/opencv/modules/highgui/src" -I"/home/zac/dev/img/opencv/modules/highgui/include" -isystem"/home/zac/dev/img/opencv/build" -isystem"/usr/include/eigen3" -isystem"/usr/include" -isystem"/usr/include" -isystem"/usr/include" -isystem"/usr/include" -isystem"/usr/include" -isystem"/usr/include" -isystem"/usr/include/OpenEXR" -isystem"/usr/include/gtk-2.0" -isystem"/usr/lib/x86_64-linux-gnu/gtk-2.0/include" -isystem"/usr/include/atk-1.0" -isystem"/usr/include/cairo" -isystem"/usr/include/gdk-pixbuf-2.0" -isystem"/usr/include/pango-1.0" -isystem"/usr/include/gio-unix-2.0" -isystem"/usr/include/glib-2.0" -isystem"/usr/lib/x86_64-linux-gnu/glib-2.0/include" -isystem"/usr/include/pixman-1" -isystem"/usr/include/freetype2" -isystem"/usr/include/libpng12" -isystem"/usr/include/glib-2.0" -isystem"/usr/lib/x86_64-linux-gnu/glib-2.0/include" -DHAVE_CVCONFIG_H -DHAVE_JPEG -DHAVE_PNG -DHAVE_TIFF -DHAVE_JASPER -DHAVE_OPENEXR -DCVAPI_EXPORTS -DHIGHGUI_EXPORTS -DHAVE_CVCONFIG_H -W -Wall -Werror=return-type -Werror=non-virtual-dtor -Werror=address -Werror=sequence-point -Wformat -Werror=format-security -Wmissing-declarations -Wundef -Winit-self -Wpointer-arith -Wshadow -Wsign-promo -Wno-narrowing -Wno-delete-non-virtual-dtor -fdiagnostics-show-option -Wno-long-long -pthread -fomit-frame-pointer -msse -msse2 -msse3 -ffunction-sections -Wno-deprecated-declarations -x c++-header -o /home/zac/dev/img/opencv/build/modules/highgui/perf_precomp.hpp.gch/opencv_perf_highgui_Release.gch /home/zac/dev/img/opencv/build/modules/highgui/perf_precomp.hpp

modules/highgui/perf_precomp.hpp: ../modules/highgui/perf/perf_precomp.hpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/zac/dev/img/opencv/build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating perf_precomp.hpp"
	cd /home/zac/dev/img/opencv/build/modules/highgui && /usr/bin/cmake -E copy /home/zac/dev/img/opencv/modules/highgui/perf/perf_precomp.hpp /home/zac/dev/img/opencv/build/modules/highgui/perf_precomp.hpp

pch_Generate_opencv_perf_highgui: modules/highgui/CMakeFiles/pch_Generate_opencv_perf_highgui
pch_Generate_opencv_perf_highgui: modules/highgui/perf_precomp.hpp.gch/opencv_perf_highgui_Release.gch
pch_Generate_opencv_perf_highgui: modules/highgui/perf_precomp.hpp
pch_Generate_opencv_perf_highgui: modules/highgui/CMakeFiles/pch_Generate_opencv_perf_highgui.dir/build.make
.PHONY : pch_Generate_opencv_perf_highgui

# Rule to build all files generated by this target.
modules/highgui/CMakeFiles/pch_Generate_opencv_perf_highgui.dir/build: pch_Generate_opencv_perf_highgui
.PHONY : modules/highgui/CMakeFiles/pch_Generate_opencv_perf_highgui.dir/build

modules/highgui/CMakeFiles/pch_Generate_opencv_perf_highgui.dir/clean:
	cd /home/zac/dev/img/opencv/build/modules/highgui && $(CMAKE_COMMAND) -P CMakeFiles/pch_Generate_opencv_perf_highgui.dir/cmake_clean.cmake
.PHONY : modules/highgui/CMakeFiles/pch_Generate_opencv_perf_highgui.dir/clean

modules/highgui/CMakeFiles/pch_Generate_opencv_perf_highgui.dir/depend:
	cd /home/zac/dev/img/opencv/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/zac/dev/img/opencv /home/zac/dev/img/opencv/modules/highgui /home/zac/dev/img/opencv/build /home/zac/dev/img/opencv/build/modules/highgui /home/zac/dev/img/opencv/build/modules/highgui/CMakeFiles/pch_Generate_opencv_perf_highgui.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : modules/highgui/CMakeFiles/pch_Generate_opencv_perf_highgui.dir/depend

