# Install script for directory: /home/wanbaoliang/wamv_ws/src/planner/pkg_nav

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/wanbaoliang/wamv_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pkg_nav/msg" TYPE FILE FILES
    "/home/wanbaoliang/wamv_ws/src/planner/pkg_nav/msg/Person.msg"
    "/home/wanbaoliang/wamv_ws/src/planner/pkg_nav/msg/system_command.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pkg_nav/srv" TYPE FILE FILES "/home/wanbaoliang/wamv_ws/src/planner/pkg_nav/srv/global_path.srv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pkg_nav/action" TYPE FILE FILES
    "/home/wanbaoliang/wamv_ws/src/planner/pkg_nav/action/AddInts.action"
    "/home/wanbaoliang/wamv_ws/src/planner/pkg_nav/action/local_path.action"
    "/home/wanbaoliang/wamv_ws/src/planner/pkg_nav/action/global_path.action"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pkg_nav/msg" TYPE FILE FILES
    "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/AddIntsAction.msg"
    "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/AddIntsActionGoal.msg"
    "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/AddIntsActionResult.msg"
    "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/AddIntsActionFeedback.msg"
    "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/AddIntsGoal.msg"
    "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/AddIntsResult.msg"
    "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/AddIntsFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pkg_nav/msg" TYPE FILE FILES
    "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/local_pathAction.msg"
    "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/local_pathActionGoal.msg"
    "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/local_pathActionResult.msg"
    "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/local_pathActionFeedback.msg"
    "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/local_pathGoal.msg"
    "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/local_pathResult.msg"
    "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/local_pathFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pkg_nav/msg" TYPE FILE FILES
    "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/global_pathAction.msg"
    "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/global_pathActionGoal.msg"
    "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/global_pathActionResult.msg"
    "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/global_pathActionFeedback.msg"
    "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/global_pathGoal.msg"
    "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/global_pathResult.msg"
    "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/global_pathFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pkg_nav/cmake" TYPE FILE FILES "/home/wanbaoliang/wamv_ws/build/planner/pkg_nav/catkin_generated/installspace/pkg_nav-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/wanbaoliang/wamv_ws/devel/include/pkg_nav")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/wanbaoliang/wamv_ws/devel/share/roseus/ros/pkg_nav")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/wanbaoliang/wamv_ws/devel/share/common-lisp/ros/pkg_nav")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/wanbaoliang/wamv_ws/devel/share/gennodejs/ros/pkg_nav")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/wanbaoliang/wamv_ws/devel/lib/python3/dist-packages/pkg_nav")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/wanbaoliang/wamv_ws/devel/lib/python3/dist-packages/pkg_nav")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/wanbaoliang/wamv_ws/build/planner/pkg_nav/catkin_generated/installspace/pkg_nav.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pkg_nav/cmake" TYPE FILE FILES "/home/wanbaoliang/wamv_ws/build/planner/pkg_nav/catkin_generated/installspace/pkg_nav-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pkg_nav/cmake" TYPE FILE FILES
    "/home/wanbaoliang/wamv_ws/build/planner/pkg_nav/catkin_generated/installspace/pkg_navConfig.cmake"
    "/home/wanbaoliang/wamv_ws/build/planner/pkg_nav/catkin_generated/installspace/pkg_navConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pkg_nav" TYPE FILE FILES "/home/wanbaoliang/wamv_ws/src/planner/pkg_nav/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkg_nav" TYPE PROGRAM FILES "/home/wanbaoliang/wamv_ws/build/planner/pkg_nav/catkin_generated/installspace/action01_server_p.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkg_nav" TYPE PROGRAM FILES "/home/wanbaoliang/wamv_ws/build/planner/pkg_nav/catkin_generated/installspace/action02_client_p.py")
endif()

