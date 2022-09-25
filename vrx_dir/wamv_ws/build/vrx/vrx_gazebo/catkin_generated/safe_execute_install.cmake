execute_process(COMMAND "/home/wanbaoliang/wamv_ws/build/vrx/vrx_gazebo/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/wanbaoliang/wamv_ws/build/vrx/vrx_gazebo/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
