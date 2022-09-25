# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "vrx_gazebo: 2 messages, 2 services")

set(MSG_I_FLAGS "-Ivrx_gazebo:/home/wanbaoliang/wamv_ws/src/vrx/vrx_gazebo/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(vrx_gazebo_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/wanbaoliang/wamv_ws/src/vrx/vrx_gazebo/msg/Task.msg" NAME_WE)
add_custom_target(_vrx_gazebo_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "vrx_gazebo" "/home/wanbaoliang/wamv_ws/src/vrx/vrx_gazebo/msg/Task.msg" ""
)

get_filename_component(_filename "/home/wanbaoliang/wamv_ws/src/vrx/vrx_gazebo/msg/Contact.msg" NAME_WE)
add_custom_target(_vrx_gazebo_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "vrx_gazebo" "/home/wanbaoliang/wamv_ws/src/vrx/vrx_gazebo/msg/Contact.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/wanbaoliang/wamv_ws/src/vrx/vrx_gazebo/srv/ColorSequence.srv" NAME_WE)
add_custom_target(_vrx_gazebo_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "vrx_gazebo" "/home/wanbaoliang/wamv_ws/src/vrx/vrx_gazebo/srv/ColorSequence.srv" ""
)

get_filename_component(_filename "/home/wanbaoliang/wamv_ws/src/vrx/vrx_gazebo/srv/BallShooter.srv" NAME_WE)
add_custom_target(_vrx_gazebo_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "vrx_gazebo" "/home/wanbaoliang/wamv_ws/src/vrx/vrx_gazebo/srv/BallShooter.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(vrx_gazebo
  "/home/wanbaoliang/wamv_ws/src/vrx/vrx_gazebo/msg/Task.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vrx_gazebo
)
_generate_msg_cpp(vrx_gazebo
  "/home/wanbaoliang/wamv_ws/src/vrx/vrx_gazebo/msg/Contact.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vrx_gazebo
)

### Generating Services
_generate_srv_cpp(vrx_gazebo
  "/home/wanbaoliang/wamv_ws/src/vrx/vrx_gazebo/srv/ColorSequence.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vrx_gazebo
)
_generate_srv_cpp(vrx_gazebo
  "/home/wanbaoliang/wamv_ws/src/vrx/vrx_gazebo/srv/BallShooter.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vrx_gazebo
)

### Generating Module File
_generate_module_cpp(vrx_gazebo
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vrx_gazebo
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(vrx_gazebo_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(vrx_gazebo_generate_messages vrx_gazebo_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/wanbaoliang/wamv_ws/src/vrx/vrx_gazebo/msg/Task.msg" NAME_WE)
add_dependencies(vrx_gazebo_generate_messages_cpp _vrx_gazebo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wanbaoliang/wamv_ws/src/vrx/vrx_gazebo/msg/Contact.msg" NAME_WE)
add_dependencies(vrx_gazebo_generate_messages_cpp _vrx_gazebo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wanbaoliang/wamv_ws/src/vrx/vrx_gazebo/srv/ColorSequence.srv" NAME_WE)
add_dependencies(vrx_gazebo_generate_messages_cpp _vrx_gazebo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wanbaoliang/wamv_ws/src/vrx/vrx_gazebo/srv/BallShooter.srv" NAME_WE)
add_dependencies(vrx_gazebo_generate_messages_cpp _vrx_gazebo_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(vrx_gazebo_gencpp)
add_dependencies(vrx_gazebo_gencpp vrx_gazebo_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS vrx_gazebo_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(vrx_gazebo
  "/home/wanbaoliang/wamv_ws/src/vrx/vrx_gazebo/msg/Task.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/vrx_gazebo
)
_generate_msg_eus(vrx_gazebo
  "/home/wanbaoliang/wamv_ws/src/vrx/vrx_gazebo/msg/Contact.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/vrx_gazebo
)

### Generating Services
_generate_srv_eus(vrx_gazebo
  "/home/wanbaoliang/wamv_ws/src/vrx/vrx_gazebo/srv/ColorSequence.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/vrx_gazebo
)
_generate_srv_eus(vrx_gazebo
  "/home/wanbaoliang/wamv_ws/src/vrx/vrx_gazebo/srv/BallShooter.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/vrx_gazebo
)

### Generating Module File
_generate_module_eus(vrx_gazebo
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/vrx_gazebo
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(vrx_gazebo_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(vrx_gazebo_generate_messages vrx_gazebo_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/wanbaoliang/wamv_ws/src/vrx/vrx_gazebo/msg/Task.msg" NAME_WE)
add_dependencies(vrx_gazebo_generate_messages_eus _vrx_gazebo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wanbaoliang/wamv_ws/src/vrx/vrx_gazebo/msg/Contact.msg" NAME_WE)
add_dependencies(vrx_gazebo_generate_messages_eus _vrx_gazebo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wanbaoliang/wamv_ws/src/vrx/vrx_gazebo/srv/ColorSequence.srv" NAME_WE)
add_dependencies(vrx_gazebo_generate_messages_eus _vrx_gazebo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wanbaoliang/wamv_ws/src/vrx/vrx_gazebo/srv/BallShooter.srv" NAME_WE)
add_dependencies(vrx_gazebo_generate_messages_eus _vrx_gazebo_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(vrx_gazebo_geneus)
add_dependencies(vrx_gazebo_geneus vrx_gazebo_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS vrx_gazebo_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(vrx_gazebo
  "/home/wanbaoliang/wamv_ws/src/vrx/vrx_gazebo/msg/Task.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vrx_gazebo
)
_generate_msg_lisp(vrx_gazebo
  "/home/wanbaoliang/wamv_ws/src/vrx/vrx_gazebo/msg/Contact.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vrx_gazebo
)

### Generating Services
_generate_srv_lisp(vrx_gazebo
  "/home/wanbaoliang/wamv_ws/src/vrx/vrx_gazebo/srv/ColorSequence.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vrx_gazebo
)
_generate_srv_lisp(vrx_gazebo
  "/home/wanbaoliang/wamv_ws/src/vrx/vrx_gazebo/srv/BallShooter.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vrx_gazebo
)

### Generating Module File
_generate_module_lisp(vrx_gazebo
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vrx_gazebo
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(vrx_gazebo_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(vrx_gazebo_generate_messages vrx_gazebo_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/wanbaoliang/wamv_ws/src/vrx/vrx_gazebo/msg/Task.msg" NAME_WE)
add_dependencies(vrx_gazebo_generate_messages_lisp _vrx_gazebo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wanbaoliang/wamv_ws/src/vrx/vrx_gazebo/msg/Contact.msg" NAME_WE)
add_dependencies(vrx_gazebo_generate_messages_lisp _vrx_gazebo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wanbaoliang/wamv_ws/src/vrx/vrx_gazebo/srv/ColorSequence.srv" NAME_WE)
add_dependencies(vrx_gazebo_generate_messages_lisp _vrx_gazebo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wanbaoliang/wamv_ws/src/vrx/vrx_gazebo/srv/BallShooter.srv" NAME_WE)
add_dependencies(vrx_gazebo_generate_messages_lisp _vrx_gazebo_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(vrx_gazebo_genlisp)
add_dependencies(vrx_gazebo_genlisp vrx_gazebo_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS vrx_gazebo_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(vrx_gazebo
  "/home/wanbaoliang/wamv_ws/src/vrx/vrx_gazebo/msg/Task.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/vrx_gazebo
)
_generate_msg_nodejs(vrx_gazebo
  "/home/wanbaoliang/wamv_ws/src/vrx/vrx_gazebo/msg/Contact.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/vrx_gazebo
)

### Generating Services
_generate_srv_nodejs(vrx_gazebo
  "/home/wanbaoliang/wamv_ws/src/vrx/vrx_gazebo/srv/ColorSequence.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/vrx_gazebo
)
_generate_srv_nodejs(vrx_gazebo
  "/home/wanbaoliang/wamv_ws/src/vrx/vrx_gazebo/srv/BallShooter.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/vrx_gazebo
)

### Generating Module File
_generate_module_nodejs(vrx_gazebo
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/vrx_gazebo
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(vrx_gazebo_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(vrx_gazebo_generate_messages vrx_gazebo_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/wanbaoliang/wamv_ws/src/vrx/vrx_gazebo/msg/Task.msg" NAME_WE)
add_dependencies(vrx_gazebo_generate_messages_nodejs _vrx_gazebo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wanbaoliang/wamv_ws/src/vrx/vrx_gazebo/msg/Contact.msg" NAME_WE)
add_dependencies(vrx_gazebo_generate_messages_nodejs _vrx_gazebo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wanbaoliang/wamv_ws/src/vrx/vrx_gazebo/srv/ColorSequence.srv" NAME_WE)
add_dependencies(vrx_gazebo_generate_messages_nodejs _vrx_gazebo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wanbaoliang/wamv_ws/src/vrx/vrx_gazebo/srv/BallShooter.srv" NAME_WE)
add_dependencies(vrx_gazebo_generate_messages_nodejs _vrx_gazebo_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(vrx_gazebo_gennodejs)
add_dependencies(vrx_gazebo_gennodejs vrx_gazebo_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS vrx_gazebo_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(vrx_gazebo
  "/home/wanbaoliang/wamv_ws/src/vrx/vrx_gazebo/msg/Task.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vrx_gazebo
)
_generate_msg_py(vrx_gazebo
  "/home/wanbaoliang/wamv_ws/src/vrx/vrx_gazebo/msg/Contact.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vrx_gazebo
)

### Generating Services
_generate_srv_py(vrx_gazebo
  "/home/wanbaoliang/wamv_ws/src/vrx/vrx_gazebo/srv/ColorSequence.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vrx_gazebo
)
_generate_srv_py(vrx_gazebo
  "/home/wanbaoliang/wamv_ws/src/vrx/vrx_gazebo/srv/BallShooter.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vrx_gazebo
)

### Generating Module File
_generate_module_py(vrx_gazebo
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vrx_gazebo
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(vrx_gazebo_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(vrx_gazebo_generate_messages vrx_gazebo_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/wanbaoliang/wamv_ws/src/vrx/vrx_gazebo/msg/Task.msg" NAME_WE)
add_dependencies(vrx_gazebo_generate_messages_py _vrx_gazebo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wanbaoliang/wamv_ws/src/vrx/vrx_gazebo/msg/Contact.msg" NAME_WE)
add_dependencies(vrx_gazebo_generate_messages_py _vrx_gazebo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wanbaoliang/wamv_ws/src/vrx/vrx_gazebo/srv/ColorSequence.srv" NAME_WE)
add_dependencies(vrx_gazebo_generate_messages_py _vrx_gazebo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wanbaoliang/wamv_ws/src/vrx/vrx_gazebo/srv/BallShooter.srv" NAME_WE)
add_dependencies(vrx_gazebo_generate_messages_py _vrx_gazebo_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(vrx_gazebo_genpy)
add_dependencies(vrx_gazebo_genpy vrx_gazebo_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS vrx_gazebo_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vrx_gazebo)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vrx_gazebo
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(vrx_gazebo_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/vrx_gazebo)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/vrx_gazebo
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(vrx_gazebo_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vrx_gazebo)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vrx_gazebo
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(vrx_gazebo_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/vrx_gazebo)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/vrx_gazebo
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(vrx_gazebo_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vrx_gazebo)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vrx_gazebo\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vrx_gazebo
    DESTINATION ${genpy_INSTALL_DIR}
    # skip all init files
    PATTERN "__init__.py" EXCLUDE
    PATTERN "__init__.pyc" EXCLUDE
  )
  # install init files which are not in the root folder of the generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vrx_gazebo
    DESTINATION ${genpy_INSTALL_DIR}
    FILES_MATCHING
    REGEX "${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vrx_gazebo/.+/__init__.pyc?$"
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(vrx_gazebo_generate_messages_py std_msgs_generate_messages_py)
endif()
