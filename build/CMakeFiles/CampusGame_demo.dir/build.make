# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.24

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
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/homie/桌面/aa

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/homie/桌面/aa/build

# Include any dependencies generated for this target.
include CMakeFiles/CampusGame_demo.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/CampusGame_demo.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/CampusGame_demo.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/CampusGame_demo.dir/flags.make

CMakeFiles/CampusGame_demo.dir/main.cpp.o: CMakeFiles/CampusGame_demo.dir/flags.make
CMakeFiles/CampusGame_demo.dir/main.cpp.o: /home/homie/桌面/aa/main.cpp
CMakeFiles/CampusGame_demo.dir/main.cpp.o: CMakeFiles/CampusGame_demo.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/homie/桌面/aa/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/CampusGame_demo.dir/main.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/CampusGame_demo.dir/main.cpp.o -MF CMakeFiles/CampusGame_demo.dir/main.cpp.o.d -o CMakeFiles/CampusGame_demo.dir/main.cpp.o -c /home/homie/桌面/aa/main.cpp

CMakeFiles/CampusGame_demo.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/CampusGame_demo.dir/main.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/homie/桌面/aa/main.cpp > CMakeFiles/CampusGame_demo.dir/main.cpp.i

CMakeFiles/CampusGame_demo.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/CampusGame_demo.dir/main.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/homie/桌面/aa/main.cpp -o CMakeFiles/CampusGame_demo.dir/main.cpp.s

# Object files for target CampusGame_demo
CampusGame_demo_OBJECTS = \
"CMakeFiles/CampusGame_demo.dir/main.cpp.o"

# External object files for target CampusGame_demo
CampusGame_demo_EXTERNAL_OBJECTS =

CampusGame_demo: CMakeFiles/CampusGame_demo.dir/main.cpp.o
CampusGame_demo: CMakeFiles/CampusGame_demo.dir/build.make
CampusGame_demo: /usr/lib/libCampusGame.a
CampusGame_demo: /usr/lib/x86_64-linux-gnu/libopencv_stitching.so.4.2.0
CampusGame_demo: /usr/lib/x86_64-linux-gnu/libopencv_aruco.so.4.2.0
CampusGame_demo: /usr/lib/x86_64-linux-gnu/libopencv_bgsegm.so.4.2.0
CampusGame_demo: /usr/lib/x86_64-linux-gnu/libopencv_bioinspired.so.4.2.0
CampusGame_demo: /usr/lib/x86_64-linux-gnu/libopencv_ccalib.so.4.2.0
CampusGame_demo: /usr/lib/x86_64-linux-gnu/libopencv_dnn_objdetect.so.4.2.0
CampusGame_demo: /usr/lib/x86_64-linux-gnu/libopencv_dnn_superres.so.4.2.0
CampusGame_demo: /usr/lib/x86_64-linux-gnu/libopencv_dpm.so.4.2.0
CampusGame_demo: /usr/lib/x86_64-linux-gnu/libopencv_highgui.so.4.2.0
CampusGame_demo: /usr/lib/x86_64-linux-gnu/libopencv_face.so.4.2.0
CampusGame_demo: /usr/lib/x86_64-linux-gnu/libopencv_freetype.so.4.2.0
CampusGame_demo: /usr/lib/x86_64-linux-gnu/libopencv_fuzzy.so.4.2.0
CampusGame_demo: /usr/lib/x86_64-linux-gnu/libopencv_hdf.so.4.2.0
CampusGame_demo: /usr/lib/x86_64-linux-gnu/libopencv_hfs.so.4.2.0
CampusGame_demo: /usr/lib/x86_64-linux-gnu/libopencv_img_hash.so.4.2.0
CampusGame_demo: /usr/lib/x86_64-linux-gnu/libopencv_line_descriptor.so.4.2.0
CampusGame_demo: /usr/lib/x86_64-linux-gnu/libopencv_quality.so.4.2.0
CampusGame_demo: /usr/lib/x86_64-linux-gnu/libopencv_reg.so.4.2.0
CampusGame_demo: /usr/lib/x86_64-linux-gnu/libopencv_rgbd.so.4.2.0
CampusGame_demo: /usr/lib/x86_64-linux-gnu/libopencv_saliency.so.4.2.0
CampusGame_demo: /usr/lib/x86_64-linux-gnu/libopencv_shape.so.4.2.0
CampusGame_demo: /usr/lib/x86_64-linux-gnu/libopencv_stereo.so.4.2.0
CampusGame_demo: /usr/lib/x86_64-linux-gnu/libopencv_structured_light.so.4.2.0
CampusGame_demo: /usr/lib/x86_64-linux-gnu/libopencv_phase_unwrapping.so.4.2.0
CampusGame_demo: /usr/lib/x86_64-linux-gnu/libopencv_superres.so.4.2.0
CampusGame_demo: /usr/lib/x86_64-linux-gnu/libopencv_optflow.so.4.2.0
CampusGame_demo: /usr/lib/x86_64-linux-gnu/libopencv_surface_matching.so.4.2.0
CampusGame_demo: /usr/lib/x86_64-linux-gnu/libopencv_tracking.so.4.2.0
CampusGame_demo: /usr/lib/x86_64-linux-gnu/libopencv_datasets.so.4.2.0
CampusGame_demo: /usr/lib/x86_64-linux-gnu/libopencv_plot.so.4.2.0
CampusGame_demo: /usr/lib/x86_64-linux-gnu/libopencv_text.so.4.2.0
CampusGame_demo: /usr/lib/x86_64-linux-gnu/libopencv_dnn.so.4.2.0
CampusGame_demo: /usr/lib/x86_64-linux-gnu/libopencv_ml.so.4.2.0
CampusGame_demo: /usr/lib/x86_64-linux-gnu/libopencv_videostab.so.4.2.0
CampusGame_demo: /usr/lib/x86_64-linux-gnu/libopencv_videoio.so.4.2.0
CampusGame_demo: /usr/lib/x86_64-linux-gnu/libopencv_viz.so.4.2.0
CampusGame_demo: /usr/lib/x86_64-linux-gnu/libopencv_ximgproc.so.4.2.0
CampusGame_demo: /usr/lib/x86_64-linux-gnu/libopencv_video.so.4.2.0
CampusGame_demo: /usr/lib/x86_64-linux-gnu/libopencv_xobjdetect.so.4.2.0
CampusGame_demo: /usr/lib/x86_64-linux-gnu/libopencv_imgcodecs.so.4.2.0
CampusGame_demo: /usr/lib/x86_64-linux-gnu/libopencv_objdetect.so.4.2.0
CampusGame_demo: /usr/lib/x86_64-linux-gnu/libopencv_calib3d.so.4.2.0
CampusGame_demo: /usr/lib/x86_64-linux-gnu/libopencv_features2d.so.4.2.0
CampusGame_demo: /usr/lib/x86_64-linux-gnu/libopencv_flann.so.4.2.0
CampusGame_demo: /usr/lib/x86_64-linux-gnu/libopencv_xphoto.so.4.2.0
CampusGame_demo: /usr/lib/x86_64-linux-gnu/libopencv_photo.so.4.2.0
CampusGame_demo: /usr/lib/x86_64-linux-gnu/libopencv_imgproc.so.4.2.0
CampusGame_demo: /usr/lib/x86_64-linux-gnu/libopencv_core.so.4.2.0
CampusGame_demo: /usr/lib/x86_64-linux-gnu/libjsoncpp.so.1.7.4
CampusGame_demo: CMakeFiles/CampusGame_demo.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/homie/桌面/aa/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable CampusGame_demo"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/CampusGame_demo.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/CampusGame_demo.dir/build: CampusGame_demo
.PHONY : CMakeFiles/CampusGame_demo.dir/build

CMakeFiles/CampusGame_demo.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/CampusGame_demo.dir/cmake_clean.cmake
.PHONY : CMakeFiles/CampusGame_demo.dir/clean

CMakeFiles/CampusGame_demo.dir/depend:
	cd /home/homie/桌面/aa/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/homie/桌面/aa /home/homie/桌面/aa /home/homie/桌面/aa/build /home/homie/桌面/aa/build /home/homie/桌面/aa/build/CMakeFiles/CampusGame_demo.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/CampusGame_demo.dir/depend

