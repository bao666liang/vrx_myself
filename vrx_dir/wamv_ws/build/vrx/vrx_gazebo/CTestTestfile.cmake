# CMake generated Testfile for 
# Source directory: /home/wanbaoliang/wamv_ws/src/vrx/vrx_gazebo
# Build directory: /home/wanbaoliang/wamv_ws/build/vrx/vrx_gazebo
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_vrx_gazebo_rostest_test_sandisland.test "/home/wanbaoliang/wamv_ws/build/catkin_generated/env_cached.sh" "/usr/bin/python3" "/opt/ros/noetic/share/catkin/cmake/test/run_tests.py" "/home/wanbaoliang/wamv_ws/build/test_results/vrx_gazebo/rostest-test_sandisland.xml" "--return-code" "/usr/bin/python3 /opt/ros/noetic/share/rostest/cmake/../../../bin/rostest --pkgdir=/home/wanbaoliang/wamv_ws/src/vrx/vrx_gazebo --package=vrx_gazebo --results-filename test_sandisland.xml --results-base-dir \"/home/wanbaoliang/wamv_ws/build/test_results\" /home/wanbaoliang/wamv_ws/src/vrx/vrx_gazebo/test/sandisland.test ")
set_tests_properties(_ctest_vrx_gazebo_rostest_test_sandisland.test PROPERTIES  _BACKTRACE_TRIPLES "/opt/ros/noetic/share/catkin/cmake/test/tests.cmake;160;add_test;/opt/ros/noetic/share/rostest/cmake/rostest-extras.cmake;52;catkin_run_tests_target;/opt/ros/noetic/share/rostest/cmake/rostest-extras.cmake;80;add_rostest;/opt/ros/noetic/share/rostest/cmake/rostest-extras.cmake;100;_add_rostest_google_test;/home/wanbaoliang/wamv_ws/src/vrx/vrx_gazebo/CMakeLists.txt;399;add_rostest_gtest;/home/wanbaoliang/wamv_ws/src/vrx/vrx_gazebo/CMakeLists.txt;0;")
subdirs("msgs")
