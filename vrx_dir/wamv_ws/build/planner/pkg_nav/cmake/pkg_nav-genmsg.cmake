# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "pkg_nav: 23 messages, 1 services")

set(MSG_I_FLAGS "-Ipkg_nav:/home/wanbaoliang/wamv_ws/src/planner/pkg_nav/msg;-Ipkg_nav:/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/noetic/share/actionlib_msgs/cmake/../msg;-Inav_msgs:/opt/ros/noetic/share/nav_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg;-Itf:/opt/ros/noetic/share/tf/cmake/../msg;-Iautoware_msgs:/opt/ros/noetic/share/autoware_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/noetic/share/sensor_msgs/cmake/../msg;-Ijsk_recognition_msgs:/opt/ros/noetic/share/jsk_recognition_msgs/cmake/../msg;-Ipcl_msgs:/opt/ros/noetic/share/pcl_msgs/cmake/../msg;-Ijsk_footstep_msgs:/opt/ros/noetic/share/jsk_footstep_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(pkg_nav_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/wanbaoliang/wamv_ws/src/planner/pkg_nav/msg/Person.msg" NAME_WE)
add_custom_target(_pkg_nav_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pkg_nav" "/home/wanbaoliang/wamv_ws/src/planner/pkg_nav/msg/Person.msg" ""
)

get_filename_component(_filename "/home/wanbaoliang/wamv_ws/src/planner/pkg_nav/msg/system_command.msg" NAME_WE)
add_custom_target(_pkg_nav_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pkg_nav" "/home/wanbaoliang/wamv_ws/src/planner/pkg_nav/msg/system_command.msg" ""
)

get_filename_component(_filename "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/AddIntsAction.msg" NAME_WE)
add_custom_target(_pkg_nav_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pkg_nav" "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/AddIntsAction.msg" "pkg_nav/AddIntsResult:pkg_nav/AddIntsFeedback:actionlib_msgs/GoalStatus:pkg_nav/AddIntsActionGoal:actionlib_msgs/GoalID:std_msgs/Header:pkg_nav/AddIntsActionResult:pkg_nav/AddIntsGoal:pkg_nav/AddIntsActionFeedback"
)

get_filename_component(_filename "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/AddIntsActionGoal.msg" NAME_WE)
add_custom_target(_pkg_nav_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pkg_nav" "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/AddIntsActionGoal.msg" "std_msgs/Header:pkg_nav/AddIntsGoal:actionlib_msgs/GoalID"
)

get_filename_component(_filename "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/AddIntsActionResult.msg" NAME_WE)
add_custom_target(_pkg_nav_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pkg_nav" "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/AddIntsActionResult.msg" "std_msgs/Header:pkg_nav/AddIntsResult:actionlib_msgs/GoalStatus:actionlib_msgs/GoalID"
)

get_filename_component(_filename "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/AddIntsActionFeedback.msg" NAME_WE)
add_custom_target(_pkg_nav_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pkg_nav" "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/AddIntsActionFeedback.msg" "std_msgs/Header:pkg_nav/AddIntsFeedback:actionlib_msgs/GoalStatus:actionlib_msgs/GoalID"
)

get_filename_component(_filename "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/AddIntsGoal.msg" NAME_WE)
add_custom_target(_pkg_nav_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pkg_nav" "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/AddIntsGoal.msg" ""
)

get_filename_component(_filename "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/AddIntsResult.msg" NAME_WE)
add_custom_target(_pkg_nav_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pkg_nav" "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/AddIntsResult.msg" ""
)

get_filename_component(_filename "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/AddIntsFeedback.msg" NAME_WE)
add_custom_target(_pkg_nav_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pkg_nav" "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/AddIntsFeedback.msg" ""
)

get_filename_component(_filename "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/local_pathAction.msg" NAME_WE)
add_custom_target(_pkg_nav_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pkg_nav" "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/local_pathAction.msg" "pkg_nav/local_pathActionFeedback:actionlib_msgs/GoalStatus:geometry_msgs/Pose:pkg_nav/local_pathGoal:geometry_msgs/Point:pkg_nav/local_pathFeedback:pkg_nav/local_pathResult:actionlib_msgs/GoalID:pkg_nav/local_pathActionResult:std_msgs/Header:geometry_msgs/PoseStamped:pkg_nav/local_pathActionGoal:nav_msgs/Path:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/local_pathActionGoal.msg" NAME_WE)
add_custom_target(_pkg_nav_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pkg_nav" "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/local_pathActionGoal.msg" "geometry_msgs/Pose:pkg_nav/local_pathGoal:geometry_msgs/Point:actionlib_msgs/GoalID:std_msgs/Header:geometry_msgs/PoseStamped:nav_msgs/Path:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/local_pathActionResult.msg" NAME_WE)
add_custom_target(_pkg_nav_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pkg_nav" "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/local_pathActionResult.msg" "std_msgs/Header:pkg_nav/local_pathResult:actionlib_msgs/GoalStatus:actionlib_msgs/GoalID"
)

get_filename_component(_filename "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/local_pathActionFeedback.msg" NAME_WE)
add_custom_target(_pkg_nav_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pkg_nav" "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/local_pathActionFeedback.msg" "std_msgs/Header:pkg_nav/local_pathFeedback:actionlib_msgs/GoalStatus:actionlib_msgs/GoalID"
)

get_filename_component(_filename "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/local_pathGoal.msg" NAME_WE)
add_custom_target(_pkg_nav_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pkg_nav" "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/local_pathGoal.msg" "geometry_msgs/Pose:geometry_msgs/Point:std_msgs/Header:geometry_msgs/PoseStamped:nav_msgs/Path:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/local_pathResult.msg" NAME_WE)
add_custom_target(_pkg_nav_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pkg_nav" "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/local_pathResult.msg" ""
)

get_filename_component(_filename "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/local_pathFeedback.msg" NAME_WE)
add_custom_target(_pkg_nav_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pkg_nav" "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/local_pathFeedback.msg" ""
)

get_filename_component(_filename "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/global_pathAction.msg" NAME_WE)
add_custom_target(_pkg_nav_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pkg_nav" "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/global_pathAction.msg" "pkg_nav/global_pathResult:actionlib_msgs/GoalStatus:pkg_nav/global_pathGoal:geometry_msgs/Pose:geometry_msgs/Point:pkg_nav/global_pathActionFeedback:pkg_nav/global_pathActionResult:actionlib_msgs/GoalID:std_msgs/Header:geometry_msgs/PoseStamped:pkg_nav/global_pathFeedback:pkg_nav/global_pathActionGoal:nav_msgs/Path:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/global_pathActionGoal.msg" NAME_WE)
add_custom_target(_pkg_nav_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pkg_nav" "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/global_pathActionGoal.msg" "pkg_nav/global_pathGoal:geometry_msgs/Pose:geometry_msgs/Point:actionlib_msgs/GoalID:std_msgs/Header:geometry_msgs/PoseStamped:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/global_pathActionResult.msg" NAME_WE)
add_custom_target(_pkg_nav_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pkg_nav" "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/global_pathActionResult.msg" "pkg_nav/global_pathResult:actionlib_msgs/GoalStatus:geometry_msgs/Pose:geometry_msgs/Point:actionlib_msgs/GoalID:std_msgs/Header:geometry_msgs/PoseStamped:nav_msgs/Path:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/global_pathActionFeedback.msg" NAME_WE)
add_custom_target(_pkg_nav_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pkg_nav" "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/global_pathActionFeedback.msg" "std_msgs/Header:actionlib_msgs/GoalStatus:pkg_nav/global_pathFeedback:actionlib_msgs/GoalID"
)

get_filename_component(_filename "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/global_pathGoal.msg" NAME_WE)
add_custom_target(_pkg_nav_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pkg_nav" "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/global_pathGoal.msg" "geometry_msgs/Pose:geometry_msgs/Point:std_msgs/Header:geometry_msgs/PoseStamped:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/global_pathResult.msg" NAME_WE)
add_custom_target(_pkg_nav_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pkg_nav" "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/global_pathResult.msg" "geometry_msgs/Pose:geometry_msgs/Point:std_msgs/Header:geometry_msgs/PoseStamped:nav_msgs/Path:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/global_pathFeedback.msg" NAME_WE)
add_custom_target(_pkg_nav_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pkg_nav" "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/global_pathFeedback.msg" ""
)

get_filename_component(_filename "/home/wanbaoliang/wamv_ws/src/planner/pkg_nav/srv/global_path.srv" NAME_WE)
add_custom_target(_pkg_nav_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pkg_nav" "/home/wanbaoliang/wamv_ws/src/planner/pkg_nav/srv/global_path.srv" "geometry_msgs/Pose:geometry_msgs/Point:std_msgs/Header:geometry_msgs/PoseStamped:nav_msgs/Path:geometry_msgs/Quaternion"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(pkg_nav
  "/home/wanbaoliang/wamv_ws/src/planner/pkg_nav/msg/Person.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pkg_nav
)
_generate_msg_cpp(pkg_nav
  "/home/wanbaoliang/wamv_ws/src/planner/pkg_nav/msg/system_command.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pkg_nav
)
_generate_msg_cpp(pkg_nav
  "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/AddIntsAction.msg"
  "${MSG_I_FLAGS}"
  "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/AddIntsResult.msg;/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/AddIntsFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/AddIntsActionGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/AddIntsActionResult.msg;/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/AddIntsGoal.msg;/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/AddIntsActionFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pkg_nav
)
_generate_msg_cpp(pkg_nav
  "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/AddIntsActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/AddIntsGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pkg_nav
)
_generate_msg_cpp(pkg_nav
  "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/AddIntsActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/AddIntsResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pkg_nav
)
_generate_msg_cpp(pkg_nav
  "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/AddIntsActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/AddIntsFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pkg_nav
)
_generate_msg_cpp(pkg_nav
  "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/AddIntsGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pkg_nav
)
_generate_msg_cpp(pkg_nav
  "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/AddIntsResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pkg_nav
)
_generate_msg_cpp(pkg_nav
  "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/AddIntsFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pkg_nav
)
_generate_msg_cpp(pkg_nav
  "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/local_pathAction.msg"
  "${MSG_I_FLAGS}"
  "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/local_pathActionFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/local_pathGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/local_pathFeedback.msg;/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/local_pathResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/local_pathActionResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/local_pathActionGoal.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pkg_nav
)
_generate_msg_cpp(pkg_nav
  "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/local_pathActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/local_pathGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pkg_nav
)
_generate_msg_cpp(pkg_nav
  "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/local_pathActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/local_pathResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pkg_nav
)
_generate_msg_cpp(pkg_nav
  "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/local_pathActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/local_pathFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pkg_nav
)
_generate_msg_cpp(pkg_nav
  "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/local_pathGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pkg_nav
)
_generate_msg_cpp(pkg_nav
  "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/local_pathResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pkg_nav
)
_generate_msg_cpp(pkg_nav
  "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/local_pathFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pkg_nav
)
_generate_msg_cpp(pkg_nav
  "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/global_pathAction.msg"
  "${MSG_I_FLAGS}"
  "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/global_pathResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/global_pathGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/global_pathActionFeedback.msg;/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/global_pathActionResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/global_pathFeedback.msg;/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/global_pathActionGoal.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pkg_nav
)
_generate_msg_cpp(pkg_nav
  "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/global_pathActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/global_pathGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pkg_nav
)
_generate_msg_cpp(pkg_nav
  "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/global_pathActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/global_pathResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pkg_nav
)
_generate_msg_cpp(pkg_nav
  "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/global_pathActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/global_pathFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pkg_nav
)
_generate_msg_cpp(pkg_nav
  "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/global_pathGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pkg_nav
)
_generate_msg_cpp(pkg_nav
  "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/global_pathResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pkg_nav
)
_generate_msg_cpp(pkg_nav
  "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/global_pathFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pkg_nav
)

### Generating Services
_generate_srv_cpp(pkg_nav
  "/home/wanbaoliang/wamv_ws/src/planner/pkg_nav/srv/global_path.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pkg_nav
)

### Generating Module File
_generate_module_cpp(pkg_nav
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pkg_nav
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(pkg_nav_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(pkg_nav_generate_messages pkg_nav_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/wanbaoliang/wamv_ws/src/planner/pkg_nav/msg/Person.msg" NAME_WE)
add_dependencies(pkg_nav_generate_messages_cpp _pkg_nav_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wanbaoliang/wamv_ws/src/planner/pkg_nav/msg/system_command.msg" NAME_WE)
add_dependencies(pkg_nav_generate_messages_cpp _pkg_nav_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/AddIntsAction.msg" NAME_WE)
add_dependencies(pkg_nav_generate_messages_cpp _pkg_nav_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/AddIntsActionGoal.msg" NAME_WE)
add_dependencies(pkg_nav_generate_messages_cpp _pkg_nav_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/AddIntsActionResult.msg" NAME_WE)
add_dependencies(pkg_nav_generate_messages_cpp _pkg_nav_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/AddIntsActionFeedback.msg" NAME_WE)
add_dependencies(pkg_nav_generate_messages_cpp _pkg_nav_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/AddIntsGoal.msg" NAME_WE)
add_dependencies(pkg_nav_generate_messages_cpp _pkg_nav_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/AddIntsResult.msg" NAME_WE)
add_dependencies(pkg_nav_generate_messages_cpp _pkg_nav_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/AddIntsFeedback.msg" NAME_WE)
add_dependencies(pkg_nav_generate_messages_cpp _pkg_nav_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/local_pathAction.msg" NAME_WE)
add_dependencies(pkg_nav_generate_messages_cpp _pkg_nav_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/local_pathActionGoal.msg" NAME_WE)
add_dependencies(pkg_nav_generate_messages_cpp _pkg_nav_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/local_pathActionResult.msg" NAME_WE)
add_dependencies(pkg_nav_generate_messages_cpp _pkg_nav_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/local_pathActionFeedback.msg" NAME_WE)
add_dependencies(pkg_nav_generate_messages_cpp _pkg_nav_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/local_pathGoal.msg" NAME_WE)
add_dependencies(pkg_nav_generate_messages_cpp _pkg_nav_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/local_pathResult.msg" NAME_WE)
add_dependencies(pkg_nav_generate_messages_cpp _pkg_nav_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/local_pathFeedback.msg" NAME_WE)
add_dependencies(pkg_nav_generate_messages_cpp _pkg_nav_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/global_pathAction.msg" NAME_WE)
add_dependencies(pkg_nav_generate_messages_cpp _pkg_nav_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/global_pathActionGoal.msg" NAME_WE)
add_dependencies(pkg_nav_generate_messages_cpp _pkg_nav_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/global_pathActionResult.msg" NAME_WE)
add_dependencies(pkg_nav_generate_messages_cpp _pkg_nav_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/global_pathActionFeedback.msg" NAME_WE)
add_dependencies(pkg_nav_generate_messages_cpp _pkg_nav_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/global_pathGoal.msg" NAME_WE)
add_dependencies(pkg_nav_generate_messages_cpp _pkg_nav_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/global_pathResult.msg" NAME_WE)
add_dependencies(pkg_nav_generate_messages_cpp _pkg_nav_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/global_pathFeedback.msg" NAME_WE)
add_dependencies(pkg_nav_generate_messages_cpp _pkg_nav_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wanbaoliang/wamv_ws/src/planner/pkg_nav/srv/global_path.srv" NAME_WE)
add_dependencies(pkg_nav_generate_messages_cpp _pkg_nav_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pkg_nav_gencpp)
add_dependencies(pkg_nav_gencpp pkg_nav_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pkg_nav_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(pkg_nav
  "/home/wanbaoliang/wamv_ws/src/planner/pkg_nav/msg/Person.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pkg_nav
)
_generate_msg_eus(pkg_nav
  "/home/wanbaoliang/wamv_ws/src/planner/pkg_nav/msg/system_command.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pkg_nav
)
_generate_msg_eus(pkg_nav
  "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/AddIntsAction.msg"
  "${MSG_I_FLAGS}"
  "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/AddIntsResult.msg;/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/AddIntsFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/AddIntsActionGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/AddIntsActionResult.msg;/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/AddIntsGoal.msg;/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/AddIntsActionFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pkg_nav
)
_generate_msg_eus(pkg_nav
  "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/AddIntsActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/AddIntsGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pkg_nav
)
_generate_msg_eus(pkg_nav
  "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/AddIntsActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/AddIntsResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pkg_nav
)
_generate_msg_eus(pkg_nav
  "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/AddIntsActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/AddIntsFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pkg_nav
)
_generate_msg_eus(pkg_nav
  "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/AddIntsGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pkg_nav
)
_generate_msg_eus(pkg_nav
  "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/AddIntsResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pkg_nav
)
_generate_msg_eus(pkg_nav
  "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/AddIntsFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pkg_nav
)
_generate_msg_eus(pkg_nav
  "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/local_pathAction.msg"
  "${MSG_I_FLAGS}"
  "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/local_pathActionFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/local_pathGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/local_pathFeedback.msg;/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/local_pathResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/local_pathActionResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/local_pathActionGoal.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pkg_nav
)
_generate_msg_eus(pkg_nav
  "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/local_pathActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/local_pathGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pkg_nav
)
_generate_msg_eus(pkg_nav
  "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/local_pathActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/local_pathResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pkg_nav
)
_generate_msg_eus(pkg_nav
  "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/local_pathActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/local_pathFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pkg_nav
)
_generate_msg_eus(pkg_nav
  "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/local_pathGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pkg_nav
)
_generate_msg_eus(pkg_nav
  "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/local_pathResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pkg_nav
)
_generate_msg_eus(pkg_nav
  "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/local_pathFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pkg_nav
)
_generate_msg_eus(pkg_nav
  "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/global_pathAction.msg"
  "${MSG_I_FLAGS}"
  "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/global_pathResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/global_pathGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/global_pathActionFeedback.msg;/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/global_pathActionResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/global_pathFeedback.msg;/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/global_pathActionGoal.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pkg_nav
)
_generate_msg_eus(pkg_nav
  "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/global_pathActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/global_pathGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pkg_nav
)
_generate_msg_eus(pkg_nav
  "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/global_pathActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/global_pathResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pkg_nav
)
_generate_msg_eus(pkg_nav
  "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/global_pathActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/global_pathFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pkg_nav
)
_generate_msg_eus(pkg_nav
  "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/global_pathGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pkg_nav
)
_generate_msg_eus(pkg_nav
  "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/global_pathResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pkg_nav
)
_generate_msg_eus(pkg_nav
  "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/global_pathFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pkg_nav
)

### Generating Services
_generate_srv_eus(pkg_nav
  "/home/wanbaoliang/wamv_ws/src/planner/pkg_nav/srv/global_path.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pkg_nav
)

### Generating Module File
_generate_module_eus(pkg_nav
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pkg_nav
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(pkg_nav_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(pkg_nav_generate_messages pkg_nav_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/wanbaoliang/wamv_ws/src/planner/pkg_nav/msg/Person.msg" NAME_WE)
add_dependencies(pkg_nav_generate_messages_eus _pkg_nav_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wanbaoliang/wamv_ws/src/planner/pkg_nav/msg/system_command.msg" NAME_WE)
add_dependencies(pkg_nav_generate_messages_eus _pkg_nav_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/AddIntsAction.msg" NAME_WE)
add_dependencies(pkg_nav_generate_messages_eus _pkg_nav_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/AddIntsActionGoal.msg" NAME_WE)
add_dependencies(pkg_nav_generate_messages_eus _pkg_nav_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/AddIntsActionResult.msg" NAME_WE)
add_dependencies(pkg_nav_generate_messages_eus _pkg_nav_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/AddIntsActionFeedback.msg" NAME_WE)
add_dependencies(pkg_nav_generate_messages_eus _pkg_nav_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/AddIntsGoal.msg" NAME_WE)
add_dependencies(pkg_nav_generate_messages_eus _pkg_nav_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/AddIntsResult.msg" NAME_WE)
add_dependencies(pkg_nav_generate_messages_eus _pkg_nav_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/AddIntsFeedback.msg" NAME_WE)
add_dependencies(pkg_nav_generate_messages_eus _pkg_nav_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/local_pathAction.msg" NAME_WE)
add_dependencies(pkg_nav_generate_messages_eus _pkg_nav_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/local_pathActionGoal.msg" NAME_WE)
add_dependencies(pkg_nav_generate_messages_eus _pkg_nav_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/local_pathActionResult.msg" NAME_WE)
add_dependencies(pkg_nav_generate_messages_eus _pkg_nav_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/local_pathActionFeedback.msg" NAME_WE)
add_dependencies(pkg_nav_generate_messages_eus _pkg_nav_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/local_pathGoal.msg" NAME_WE)
add_dependencies(pkg_nav_generate_messages_eus _pkg_nav_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/local_pathResult.msg" NAME_WE)
add_dependencies(pkg_nav_generate_messages_eus _pkg_nav_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/local_pathFeedback.msg" NAME_WE)
add_dependencies(pkg_nav_generate_messages_eus _pkg_nav_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/global_pathAction.msg" NAME_WE)
add_dependencies(pkg_nav_generate_messages_eus _pkg_nav_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/global_pathActionGoal.msg" NAME_WE)
add_dependencies(pkg_nav_generate_messages_eus _pkg_nav_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/global_pathActionResult.msg" NAME_WE)
add_dependencies(pkg_nav_generate_messages_eus _pkg_nav_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/global_pathActionFeedback.msg" NAME_WE)
add_dependencies(pkg_nav_generate_messages_eus _pkg_nav_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/global_pathGoal.msg" NAME_WE)
add_dependencies(pkg_nav_generate_messages_eus _pkg_nav_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/global_pathResult.msg" NAME_WE)
add_dependencies(pkg_nav_generate_messages_eus _pkg_nav_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/global_pathFeedback.msg" NAME_WE)
add_dependencies(pkg_nav_generate_messages_eus _pkg_nav_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wanbaoliang/wamv_ws/src/planner/pkg_nav/srv/global_path.srv" NAME_WE)
add_dependencies(pkg_nav_generate_messages_eus _pkg_nav_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pkg_nav_geneus)
add_dependencies(pkg_nav_geneus pkg_nav_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pkg_nav_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(pkg_nav
  "/home/wanbaoliang/wamv_ws/src/planner/pkg_nav/msg/Person.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pkg_nav
)
_generate_msg_lisp(pkg_nav
  "/home/wanbaoliang/wamv_ws/src/planner/pkg_nav/msg/system_command.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pkg_nav
)
_generate_msg_lisp(pkg_nav
  "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/AddIntsAction.msg"
  "${MSG_I_FLAGS}"
  "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/AddIntsResult.msg;/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/AddIntsFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/AddIntsActionGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/AddIntsActionResult.msg;/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/AddIntsGoal.msg;/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/AddIntsActionFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pkg_nav
)
_generate_msg_lisp(pkg_nav
  "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/AddIntsActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/AddIntsGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pkg_nav
)
_generate_msg_lisp(pkg_nav
  "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/AddIntsActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/AddIntsResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pkg_nav
)
_generate_msg_lisp(pkg_nav
  "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/AddIntsActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/AddIntsFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pkg_nav
)
_generate_msg_lisp(pkg_nav
  "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/AddIntsGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pkg_nav
)
_generate_msg_lisp(pkg_nav
  "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/AddIntsResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pkg_nav
)
_generate_msg_lisp(pkg_nav
  "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/AddIntsFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pkg_nav
)
_generate_msg_lisp(pkg_nav
  "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/local_pathAction.msg"
  "${MSG_I_FLAGS}"
  "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/local_pathActionFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/local_pathGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/local_pathFeedback.msg;/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/local_pathResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/local_pathActionResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/local_pathActionGoal.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pkg_nav
)
_generate_msg_lisp(pkg_nav
  "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/local_pathActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/local_pathGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pkg_nav
)
_generate_msg_lisp(pkg_nav
  "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/local_pathActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/local_pathResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pkg_nav
)
_generate_msg_lisp(pkg_nav
  "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/local_pathActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/local_pathFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pkg_nav
)
_generate_msg_lisp(pkg_nav
  "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/local_pathGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pkg_nav
)
_generate_msg_lisp(pkg_nav
  "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/local_pathResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pkg_nav
)
_generate_msg_lisp(pkg_nav
  "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/local_pathFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pkg_nav
)
_generate_msg_lisp(pkg_nav
  "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/global_pathAction.msg"
  "${MSG_I_FLAGS}"
  "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/global_pathResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/global_pathGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/global_pathActionFeedback.msg;/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/global_pathActionResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/global_pathFeedback.msg;/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/global_pathActionGoal.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pkg_nav
)
_generate_msg_lisp(pkg_nav
  "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/global_pathActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/global_pathGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pkg_nav
)
_generate_msg_lisp(pkg_nav
  "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/global_pathActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/global_pathResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pkg_nav
)
_generate_msg_lisp(pkg_nav
  "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/global_pathActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/global_pathFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pkg_nav
)
_generate_msg_lisp(pkg_nav
  "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/global_pathGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pkg_nav
)
_generate_msg_lisp(pkg_nav
  "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/global_pathResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pkg_nav
)
_generate_msg_lisp(pkg_nav
  "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/global_pathFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pkg_nav
)

### Generating Services
_generate_srv_lisp(pkg_nav
  "/home/wanbaoliang/wamv_ws/src/planner/pkg_nav/srv/global_path.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pkg_nav
)

### Generating Module File
_generate_module_lisp(pkg_nav
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pkg_nav
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(pkg_nav_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(pkg_nav_generate_messages pkg_nav_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/wanbaoliang/wamv_ws/src/planner/pkg_nav/msg/Person.msg" NAME_WE)
add_dependencies(pkg_nav_generate_messages_lisp _pkg_nav_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wanbaoliang/wamv_ws/src/planner/pkg_nav/msg/system_command.msg" NAME_WE)
add_dependencies(pkg_nav_generate_messages_lisp _pkg_nav_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/AddIntsAction.msg" NAME_WE)
add_dependencies(pkg_nav_generate_messages_lisp _pkg_nav_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/AddIntsActionGoal.msg" NAME_WE)
add_dependencies(pkg_nav_generate_messages_lisp _pkg_nav_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/AddIntsActionResult.msg" NAME_WE)
add_dependencies(pkg_nav_generate_messages_lisp _pkg_nav_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/AddIntsActionFeedback.msg" NAME_WE)
add_dependencies(pkg_nav_generate_messages_lisp _pkg_nav_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/AddIntsGoal.msg" NAME_WE)
add_dependencies(pkg_nav_generate_messages_lisp _pkg_nav_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/AddIntsResult.msg" NAME_WE)
add_dependencies(pkg_nav_generate_messages_lisp _pkg_nav_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/AddIntsFeedback.msg" NAME_WE)
add_dependencies(pkg_nav_generate_messages_lisp _pkg_nav_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/local_pathAction.msg" NAME_WE)
add_dependencies(pkg_nav_generate_messages_lisp _pkg_nav_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/local_pathActionGoal.msg" NAME_WE)
add_dependencies(pkg_nav_generate_messages_lisp _pkg_nav_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/local_pathActionResult.msg" NAME_WE)
add_dependencies(pkg_nav_generate_messages_lisp _pkg_nav_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/local_pathActionFeedback.msg" NAME_WE)
add_dependencies(pkg_nav_generate_messages_lisp _pkg_nav_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/local_pathGoal.msg" NAME_WE)
add_dependencies(pkg_nav_generate_messages_lisp _pkg_nav_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/local_pathResult.msg" NAME_WE)
add_dependencies(pkg_nav_generate_messages_lisp _pkg_nav_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/local_pathFeedback.msg" NAME_WE)
add_dependencies(pkg_nav_generate_messages_lisp _pkg_nav_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/global_pathAction.msg" NAME_WE)
add_dependencies(pkg_nav_generate_messages_lisp _pkg_nav_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/global_pathActionGoal.msg" NAME_WE)
add_dependencies(pkg_nav_generate_messages_lisp _pkg_nav_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/global_pathActionResult.msg" NAME_WE)
add_dependencies(pkg_nav_generate_messages_lisp _pkg_nav_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/global_pathActionFeedback.msg" NAME_WE)
add_dependencies(pkg_nav_generate_messages_lisp _pkg_nav_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/global_pathGoal.msg" NAME_WE)
add_dependencies(pkg_nav_generate_messages_lisp _pkg_nav_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/global_pathResult.msg" NAME_WE)
add_dependencies(pkg_nav_generate_messages_lisp _pkg_nav_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/global_pathFeedback.msg" NAME_WE)
add_dependencies(pkg_nav_generate_messages_lisp _pkg_nav_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wanbaoliang/wamv_ws/src/planner/pkg_nav/srv/global_path.srv" NAME_WE)
add_dependencies(pkg_nav_generate_messages_lisp _pkg_nav_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pkg_nav_genlisp)
add_dependencies(pkg_nav_genlisp pkg_nav_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pkg_nav_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(pkg_nav
  "/home/wanbaoliang/wamv_ws/src/planner/pkg_nav/msg/Person.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pkg_nav
)
_generate_msg_nodejs(pkg_nav
  "/home/wanbaoliang/wamv_ws/src/planner/pkg_nav/msg/system_command.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pkg_nav
)
_generate_msg_nodejs(pkg_nav
  "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/AddIntsAction.msg"
  "${MSG_I_FLAGS}"
  "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/AddIntsResult.msg;/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/AddIntsFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/AddIntsActionGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/AddIntsActionResult.msg;/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/AddIntsGoal.msg;/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/AddIntsActionFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pkg_nav
)
_generate_msg_nodejs(pkg_nav
  "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/AddIntsActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/AddIntsGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pkg_nav
)
_generate_msg_nodejs(pkg_nav
  "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/AddIntsActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/AddIntsResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pkg_nav
)
_generate_msg_nodejs(pkg_nav
  "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/AddIntsActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/AddIntsFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pkg_nav
)
_generate_msg_nodejs(pkg_nav
  "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/AddIntsGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pkg_nav
)
_generate_msg_nodejs(pkg_nav
  "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/AddIntsResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pkg_nav
)
_generate_msg_nodejs(pkg_nav
  "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/AddIntsFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pkg_nav
)
_generate_msg_nodejs(pkg_nav
  "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/local_pathAction.msg"
  "${MSG_I_FLAGS}"
  "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/local_pathActionFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/local_pathGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/local_pathFeedback.msg;/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/local_pathResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/local_pathActionResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/local_pathActionGoal.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pkg_nav
)
_generate_msg_nodejs(pkg_nav
  "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/local_pathActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/local_pathGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pkg_nav
)
_generate_msg_nodejs(pkg_nav
  "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/local_pathActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/local_pathResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pkg_nav
)
_generate_msg_nodejs(pkg_nav
  "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/local_pathActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/local_pathFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pkg_nav
)
_generate_msg_nodejs(pkg_nav
  "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/local_pathGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pkg_nav
)
_generate_msg_nodejs(pkg_nav
  "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/local_pathResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pkg_nav
)
_generate_msg_nodejs(pkg_nav
  "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/local_pathFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pkg_nav
)
_generate_msg_nodejs(pkg_nav
  "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/global_pathAction.msg"
  "${MSG_I_FLAGS}"
  "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/global_pathResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/global_pathGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/global_pathActionFeedback.msg;/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/global_pathActionResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/global_pathFeedback.msg;/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/global_pathActionGoal.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pkg_nav
)
_generate_msg_nodejs(pkg_nav
  "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/global_pathActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/global_pathGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pkg_nav
)
_generate_msg_nodejs(pkg_nav
  "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/global_pathActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/global_pathResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pkg_nav
)
_generate_msg_nodejs(pkg_nav
  "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/global_pathActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/global_pathFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pkg_nav
)
_generate_msg_nodejs(pkg_nav
  "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/global_pathGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pkg_nav
)
_generate_msg_nodejs(pkg_nav
  "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/global_pathResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pkg_nav
)
_generate_msg_nodejs(pkg_nav
  "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/global_pathFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pkg_nav
)

### Generating Services
_generate_srv_nodejs(pkg_nav
  "/home/wanbaoliang/wamv_ws/src/planner/pkg_nav/srv/global_path.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pkg_nav
)

### Generating Module File
_generate_module_nodejs(pkg_nav
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pkg_nav
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(pkg_nav_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(pkg_nav_generate_messages pkg_nav_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/wanbaoliang/wamv_ws/src/planner/pkg_nav/msg/Person.msg" NAME_WE)
add_dependencies(pkg_nav_generate_messages_nodejs _pkg_nav_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wanbaoliang/wamv_ws/src/planner/pkg_nav/msg/system_command.msg" NAME_WE)
add_dependencies(pkg_nav_generate_messages_nodejs _pkg_nav_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/AddIntsAction.msg" NAME_WE)
add_dependencies(pkg_nav_generate_messages_nodejs _pkg_nav_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/AddIntsActionGoal.msg" NAME_WE)
add_dependencies(pkg_nav_generate_messages_nodejs _pkg_nav_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/AddIntsActionResult.msg" NAME_WE)
add_dependencies(pkg_nav_generate_messages_nodejs _pkg_nav_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/AddIntsActionFeedback.msg" NAME_WE)
add_dependencies(pkg_nav_generate_messages_nodejs _pkg_nav_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/AddIntsGoal.msg" NAME_WE)
add_dependencies(pkg_nav_generate_messages_nodejs _pkg_nav_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/AddIntsResult.msg" NAME_WE)
add_dependencies(pkg_nav_generate_messages_nodejs _pkg_nav_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/AddIntsFeedback.msg" NAME_WE)
add_dependencies(pkg_nav_generate_messages_nodejs _pkg_nav_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/local_pathAction.msg" NAME_WE)
add_dependencies(pkg_nav_generate_messages_nodejs _pkg_nav_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/local_pathActionGoal.msg" NAME_WE)
add_dependencies(pkg_nav_generate_messages_nodejs _pkg_nav_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/local_pathActionResult.msg" NAME_WE)
add_dependencies(pkg_nav_generate_messages_nodejs _pkg_nav_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/local_pathActionFeedback.msg" NAME_WE)
add_dependencies(pkg_nav_generate_messages_nodejs _pkg_nav_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/local_pathGoal.msg" NAME_WE)
add_dependencies(pkg_nav_generate_messages_nodejs _pkg_nav_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/local_pathResult.msg" NAME_WE)
add_dependencies(pkg_nav_generate_messages_nodejs _pkg_nav_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/local_pathFeedback.msg" NAME_WE)
add_dependencies(pkg_nav_generate_messages_nodejs _pkg_nav_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/global_pathAction.msg" NAME_WE)
add_dependencies(pkg_nav_generate_messages_nodejs _pkg_nav_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/global_pathActionGoal.msg" NAME_WE)
add_dependencies(pkg_nav_generate_messages_nodejs _pkg_nav_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/global_pathActionResult.msg" NAME_WE)
add_dependencies(pkg_nav_generate_messages_nodejs _pkg_nav_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/global_pathActionFeedback.msg" NAME_WE)
add_dependencies(pkg_nav_generate_messages_nodejs _pkg_nav_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/global_pathGoal.msg" NAME_WE)
add_dependencies(pkg_nav_generate_messages_nodejs _pkg_nav_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/global_pathResult.msg" NAME_WE)
add_dependencies(pkg_nav_generate_messages_nodejs _pkg_nav_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/global_pathFeedback.msg" NAME_WE)
add_dependencies(pkg_nav_generate_messages_nodejs _pkg_nav_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wanbaoliang/wamv_ws/src/planner/pkg_nav/srv/global_path.srv" NAME_WE)
add_dependencies(pkg_nav_generate_messages_nodejs _pkg_nav_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pkg_nav_gennodejs)
add_dependencies(pkg_nav_gennodejs pkg_nav_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pkg_nav_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(pkg_nav
  "/home/wanbaoliang/wamv_ws/src/planner/pkg_nav/msg/Person.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pkg_nav
)
_generate_msg_py(pkg_nav
  "/home/wanbaoliang/wamv_ws/src/planner/pkg_nav/msg/system_command.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pkg_nav
)
_generate_msg_py(pkg_nav
  "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/AddIntsAction.msg"
  "${MSG_I_FLAGS}"
  "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/AddIntsResult.msg;/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/AddIntsFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/AddIntsActionGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/AddIntsActionResult.msg;/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/AddIntsGoal.msg;/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/AddIntsActionFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pkg_nav
)
_generate_msg_py(pkg_nav
  "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/AddIntsActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/AddIntsGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pkg_nav
)
_generate_msg_py(pkg_nav
  "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/AddIntsActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/AddIntsResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pkg_nav
)
_generate_msg_py(pkg_nav
  "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/AddIntsActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/AddIntsFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pkg_nav
)
_generate_msg_py(pkg_nav
  "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/AddIntsGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pkg_nav
)
_generate_msg_py(pkg_nav
  "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/AddIntsResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pkg_nav
)
_generate_msg_py(pkg_nav
  "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/AddIntsFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pkg_nav
)
_generate_msg_py(pkg_nav
  "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/local_pathAction.msg"
  "${MSG_I_FLAGS}"
  "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/local_pathActionFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/local_pathGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/local_pathFeedback.msg;/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/local_pathResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/local_pathActionResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/local_pathActionGoal.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pkg_nav
)
_generate_msg_py(pkg_nav
  "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/local_pathActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/local_pathGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pkg_nav
)
_generate_msg_py(pkg_nav
  "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/local_pathActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/local_pathResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pkg_nav
)
_generate_msg_py(pkg_nav
  "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/local_pathActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/local_pathFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pkg_nav
)
_generate_msg_py(pkg_nav
  "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/local_pathGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pkg_nav
)
_generate_msg_py(pkg_nav
  "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/local_pathResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pkg_nav
)
_generate_msg_py(pkg_nav
  "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/local_pathFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pkg_nav
)
_generate_msg_py(pkg_nav
  "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/global_pathAction.msg"
  "${MSG_I_FLAGS}"
  "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/global_pathResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/global_pathGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/global_pathActionFeedback.msg;/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/global_pathActionResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/global_pathFeedback.msg;/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/global_pathActionGoal.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pkg_nav
)
_generate_msg_py(pkg_nav
  "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/global_pathActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/global_pathGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pkg_nav
)
_generate_msg_py(pkg_nav
  "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/global_pathActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/global_pathResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pkg_nav
)
_generate_msg_py(pkg_nav
  "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/global_pathActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/global_pathFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pkg_nav
)
_generate_msg_py(pkg_nav
  "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/global_pathGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pkg_nav
)
_generate_msg_py(pkg_nav
  "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/global_pathResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pkg_nav
)
_generate_msg_py(pkg_nav
  "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/global_pathFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pkg_nav
)

### Generating Services
_generate_srv_py(pkg_nav
  "/home/wanbaoliang/wamv_ws/src/planner/pkg_nav/srv/global_path.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pkg_nav
)

### Generating Module File
_generate_module_py(pkg_nav
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pkg_nav
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(pkg_nav_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(pkg_nav_generate_messages pkg_nav_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/wanbaoliang/wamv_ws/src/planner/pkg_nav/msg/Person.msg" NAME_WE)
add_dependencies(pkg_nav_generate_messages_py _pkg_nav_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wanbaoliang/wamv_ws/src/planner/pkg_nav/msg/system_command.msg" NAME_WE)
add_dependencies(pkg_nav_generate_messages_py _pkg_nav_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/AddIntsAction.msg" NAME_WE)
add_dependencies(pkg_nav_generate_messages_py _pkg_nav_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/AddIntsActionGoal.msg" NAME_WE)
add_dependencies(pkg_nav_generate_messages_py _pkg_nav_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/AddIntsActionResult.msg" NAME_WE)
add_dependencies(pkg_nav_generate_messages_py _pkg_nav_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/AddIntsActionFeedback.msg" NAME_WE)
add_dependencies(pkg_nav_generate_messages_py _pkg_nav_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/AddIntsGoal.msg" NAME_WE)
add_dependencies(pkg_nav_generate_messages_py _pkg_nav_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/AddIntsResult.msg" NAME_WE)
add_dependencies(pkg_nav_generate_messages_py _pkg_nav_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/AddIntsFeedback.msg" NAME_WE)
add_dependencies(pkg_nav_generate_messages_py _pkg_nav_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/local_pathAction.msg" NAME_WE)
add_dependencies(pkg_nav_generate_messages_py _pkg_nav_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/local_pathActionGoal.msg" NAME_WE)
add_dependencies(pkg_nav_generate_messages_py _pkg_nav_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/local_pathActionResult.msg" NAME_WE)
add_dependencies(pkg_nav_generate_messages_py _pkg_nav_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/local_pathActionFeedback.msg" NAME_WE)
add_dependencies(pkg_nav_generate_messages_py _pkg_nav_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/local_pathGoal.msg" NAME_WE)
add_dependencies(pkg_nav_generate_messages_py _pkg_nav_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/local_pathResult.msg" NAME_WE)
add_dependencies(pkg_nav_generate_messages_py _pkg_nav_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/local_pathFeedback.msg" NAME_WE)
add_dependencies(pkg_nav_generate_messages_py _pkg_nav_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/global_pathAction.msg" NAME_WE)
add_dependencies(pkg_nav_generate_messages_py _pkg_nav_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/global_pathActionGoal.msg" NAME_WE)
add_dependencies(pkg_nav_generate_messages_py _pkg_nav_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/global_pathActionResult.msg" NAME_WE)
add_dependencies(pkg_nav_generate_messages_py _pkg_nav_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/global_pathActionFeedback.msg" NAME_WE)
add_dependencies(pkg_nav_generate_messages_py _pkg_nav_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/global_pathGoal.msg" NAME_WE)
add_dependencies(pkg_nav_generate_messages_py _pkg_nav_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/global_pathResult.msg" NAME_WE)
add_dependencies(pkg_nav_generate_messages_py _pkg_nav_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wanbaoliang/wamv_ws/devel/share/pkg_nav/msg/global_pathFeedback.msg" NAME_WE)
add_dependencies(pkg_nav_generate_messages_py _pkg_nav_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wanbaoliang/wamv_ws/src/planner/pkg_nav/srv/global_path.srv" NAME_WE)
add_dependencies(pkg_nav_generate_messages_py _pkg_nav_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pkg_nav_genpy)
add_dependencies(pkg_nav_genpy pkg_nav_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pkg_nav_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pkg_nav)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pkg_nav
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(pkg_nav_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(pkg_nav_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()
if(TARGET nav_msgs_generate_messages_cpp)
  add_dependencies(pkg_nav_generate_messages_cpp nav_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(pkg_nav_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET tf_generate_messages_cpp)
  add_dependencies(pkg_nav_generate_messages_cpp tf_generate_messages_cpp)
endif()
if(TARGET autoware_msgs_generate_messages_cpp)
  add_dependencies(pkg_nav_generate_messages_cpp autoware_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pkg_nav)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pkg_nav
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(pkg_nav_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(pkg_nav_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()
if(TARGET nav_msgs_generate_messages_eus)
  add_dependencies(pkg_nav_generate_messages_eus nav_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(pkg_nav_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET tf_generate_messages_eus)
  add_dependencies(pkg_nav_generate_messages_eus tf_generate_messages_eus)
endif()
if(TARGET autoware_msgs_generate_messages_eus)
  add_dependencies(pkg_nav_generate_messages_eus autoware_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pkg_nav)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pkg_nav
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(pkg_nav_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(pkg_nav_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()
if(TARGET nav_msgs_generate_messages_lisp)
  add_dependencies(pkg_nav_generate_messages_lisp nav_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(pkg_nav_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET tf_generate_messages_lisp)
  add_dependencies(pkg_nav_generate_messages_lisp tf_generate_messages_lisp)
endif()
if(TARGET autoware_msgs_generate_messages_lisp)
  add_dependencies(pkg_nav_generate_messages_lisp autoware_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pkg_nav)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pkg_nav
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(pkg_nav_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(pkg_nav_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()
if(TARGET nav_msgs_generate_messages_nodejs)
  add_dependencies(pkg_nav_generate_messages_nodejs nav_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(pkg_nav_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET tf_generate_messages_nodejs)
  add_dependencies(pkg_nav_generate_messages_nodejs tf_generate_messages_nodejs)
endif()
if(TARGET autoware_msgs_generate_messages_nodejs)
  add_dependencies(pkg_nav_generate_messages_nodejs autoware_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pkg_nav)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pkg_nav\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pkg_nav
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(pkg_nav_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(pkg_nav_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
if(TARGET nav_msgs_generate_messages_py)
  add_dependencies(pkg_nav_generate_messages_py nav_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(pkg_nav_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET tf_generate_messages_py)
  add_dependencies(pkg_nav_generate_messages_py tf_generate_messages_py)
endif()
if(TARGET autoware_msgs_generate_messages_py)
  add_dependencies(pkg_nav_generate_messages_py autoware_msgs_generate_messages_py)
endif()
