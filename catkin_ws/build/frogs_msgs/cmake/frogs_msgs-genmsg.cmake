# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "frogs_msgs: 7 messages, 0 services")

set(MSG_I_FLAGS "-Ifrogs_msgs:/home/ros/catkin_ws/devel/share/frogs_msgs/msg;-Iactionlib_msgs:/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(frogs_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/ros/catkin_ws/devel/share/frogs_msgs/msg/robot_armAction.msg" NAME_WE)
add_custom_target(_frogs_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "frogs_msgs" "/home/ros/catkin_ws/devel/share/frogs_msgs/msg/robot_armAction.msg" "frogs_msgs/robot_armGoal:actionlib_msgs/GoalStatus:frogs_msgs/robot_armActionFeedback:frogs_msgs/robot_armResult:frogs_msgs/robot_armActionResult:frogs_msgs/robot_armActionGoal:frogs_msgs/robot_armFeedback:actionlib_msgs/GoalID:std_msgs/Header"
)

get_filename_component(_filename "/home/ros/catkin_ws/devel/share/frogs_msgs/msg/robot_armActionGoal.msg" NAME_WE)
add_custom_target(_frogs_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "frogs_msgs" "/home/ros/catkin_ws/devel/share/frogs_msgs/msg/robot_armActionGoal.msg" "actionlib_msgs/GoalID:std_msgs/Header:frogs_msgs/robot_armGoal"
)

get_filename_component(_filename "/home/ros/catkin_ws/devel/share/frogs_msgs/msg/robot_armResult.msg" NAME_WE)
add_custom_target(_frogs_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "frogs_msgs" "/home/ros/catkin_ws/devel/share/frogs_msgs/msg/robot_armResult.msg" ""
)

get_filename_component(_filename "/home/ros/catkin_ws/devel/share/frogs_msgs/msg/robot_armGoal.msg" NAME_WE)
add_custom_target(_frogs_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "frogs_msgs" "/home/ros/catkin_ws/devel/share/frogs_msgs/msg/robot_armGoal.msg" ""
)

get_filename_component(_filename "/home/ros/catkin_ws/devel/share/frogs_msgs/msg/robot_armActionFeedback.msg" NAME_WE)
add_custom_target(_frogs_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "frogs_msgs" "/home/ros/catkin_ws/devel/share/frogs_msgs/msg/robot_armActionFeedback.msg" "actionlib_msgs/GoalID:std_msgs/Header:frogs_msgs/robot_armFeedback:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/ros/catkin_ws/devel/share/frogs_msgs/msg/robot_armActionResult.msg" NAME_WE)
add_custom_target(_frogs_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "frogs_msgs" "/home/ros/catkin_ws/devel/share/frogs_msgs/msg/robot_armActionResult.msg" "frogs_msgs/robot_armResult:actionlib_msgs/GoalID:std_msgs/Header:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/ros/catkin_ws/devel/share/frogs_msgs/msg/robot_armFeedback.msg" NAME_WE)
add_custom_target(_frogs_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "frogs_msgs" "/home/ros/catkin_ws/devel/share/frogs_msgs/msg/robot_armFeedback.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(frogs_msgs
  "/home/ros/catkin_ws/devel/share/frogs_msgs/msg/robot_armAction.msg"
  "${MSG_I_FLAGS}"
  "/home/ros/catkin_ws/devel/share/frogs_msgs/msg/robot_armGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/ros/catkin_ws/devel/share/frogs_msgs/msg/robot_armActionFeedback.msg;/home/ros/catkin_ws/devel/share/frogs_msgs/msg/robot_armResult.msg;/home/ros/catkin_ws/devel/share/frogs_msgs/msg/robot_armActionResult.msg;/home/ros/catkin_ws/devel/share/frogs_msgs/msg/robot_armActionGoal.msg;/home/ros/catkin_ws/devel/share/frogs_msgs/msg/robot_armFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/frogs_msgs
)
_generate_msg_cpp(frogs_msgs
  "/home/ros/catkin_ws/devel/share/frogs_msgs/msg/robot_armGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/frogs_msgs
)
_generate_msg_cpp(frogs_msgs
  "/home/ros/catkin_ws/devel/share/frogs_msgs/msg/robot_armResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/frogs_msgs
)
_generate_msg_cpp(frogs_msgs
  "/home/ros/catkin_ws/devel/share/frogs_msgs/msg/robot_armActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/ros/catkin_ws/devel/share/frogs_msgs/msg/robot_armFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/frogs_msgs
)
_generate_msg_cpp(frogs_msgs
  "/home/ros/catkin_ws/devel/share/frogs_msgs/msg/robot_armFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/frogs_msgs
)
_generate_msg_cpp(frogs_msgs
  "/home/ros/catkin_ws/devel/share/frogs_msgs/msg/robot_armActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/ros/catkin_ws/devel/share/frogs_msgs/msg/robot_armGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/frogs_msgs
)
_generate_msg_cpp(frogs_msgs
  "/home/ros/catkin_ws/devel/share/frogs_msgs/msg/robot_armActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/ros/catkin_ws/devel/share/frogs_msgs/msg/robot_armResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/frogs_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(frogs_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/frogs_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(frogs_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(frogs_msgs_generate_messages frogs_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ros/catkin_ws/devel/share/frogs_msgs/msg/robot_armAction.msg" NAME_WE)
add_dependencies(frogs_msgs_generate_messages_cpp _frogs_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/catkin_ws/devel/share/frogs_msgs/msg/robot_armActionGoal.msg" NAME_WE)
add_dependencies(frogs_msgs_generate_messages_cpp _frogs_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/catkin_ws/devel/share/frogs_msgs/msg/robot_armResult.msg" NAME_WE)
add_dependencies(frogs_msgs_generate_messages_cpp _frogs_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/catkin_ws/devel/share/frogs_msgs/msg/robot_armGoal.msg" NAME_WE)
add_dependencies(frogs_msgs_generate_messages_cpp _frogs_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/catkin_ws/devel/share/frogs_msgs/msg/robot_armActionFeedback.msg" NAME_WE)
add_dependencies(frogs_msgs_generate_messages_cpp _frogs_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/catkin_ws/devel/share/frogs_msgs/msg/robot_armActionResult.msg" NAME_WE)
add_dependencies(frogs_msgs_generate_messages_cpp _frogs_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/catkin_ws/devel/share/frogs_msgs/msg/robot_armFeedback.msg" NAME_WE)
add_dependencies(frogs_msgs_generate_messages_cpp _frogs_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(frogs_msgs_gencpp)
add_dependencies(frogs_msgs_gencpp frogs_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS frogs_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(frogs_msgs
  "/home/ros/catkin_ws/devel/share/frogs_msgs/msg/robot_armAction.msg"
  "${MSG_I_FLAGS}"
  "/home/ros/catkin_ws/devel/share/frogs_msgs/msg/robot_armGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/ros/catkin_ws/devel/share/frogs_msgs/msg/robot_armActionFeedback.msg;/home/ros/catkin_ws/devel/share/frogs_msgs/msg/robot_armResult.msg;/home/ros/catkin_ws/devel/share/frogs_msgs/msg/robot_armActionResult.msg;/home/ros/catkin_ws/devel/share/frogs_msgs/msg/robot_armActionGoal.msg;/home/ros/catkin_ws/devel/share/frogs_msgs/msg/robot_armFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/frogs_msgs
)
_generate_msg_eus(frogs_msgs
  "/home/ros/catkin_ws/devel/share/frogs_msgs/msg/robot_armGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/frogs_msgs
)
_generate_msg_eus(frogs_msgs
  "/home/ros/catkin_ws/devel/share/frogs_msgs/msg/robot_armResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/frogs_msgs
)
_generate_msg_eus(frogs_msgs
  "/home/ros/catkin_ws/devel/share/frogs_msgs/msg/robot_armActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/ros/catkin_ws/devel/share/frogs_msgs/msg/robot_armFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/frogs_msgs
)
_generate_msg_eus(frogs_msgs
  "/home/ros/catkin_ws/devel/share/frogs_msgs/msg/robot_armFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/frogs_msgs
)
_generate_msg_eus(frogs_msgs
  "/home/ros/catkin_ws/devel/share/frogs_msgs/msg/robot_armActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/ros/catkin_ws/devel/share/frogs_msgs/msg/robot_armGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/frogs_msgs
)
_generate_msg_eus(frogs_msgs
  "/home/ros/catkin_ws/devel/share/frogs_msgs/msg/robot_armActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/ros/catkin_ws/devel/share/frogs_msgs/msg/robot_armResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/frogs_msgs
)

### Generating Services

### Generating Module File
_generate_module_eus(frogs_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/frogs_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(frogs_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(frogs_msgs_generate_messages frogs_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ros/catkin_ws/devel/share/frogs_msgs/msg/robot_armAction.msg" NAME_WE)
add_dependencies(frogs_msgs_generate_messages_eus _frogs_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/catkin_ws/devel/share/frogs_msgs/msg/robot_armActionGoal.msg" NAME_WE)
add_dependencies(frogs_msgs_generate_messages_eus _frogs_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/catkin_ws/devel/share/frogs_msgs/msg/robot_armResult.msg" NAME_WE)
add_dependencies(frogs_msgs_generate_messages_eus _frogs_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/catkin_ws/devel/share/frogs_msgs/msg/robot_armGoal.msg" NAME_WE)
add_dependencies(frogs_msgs_generate_messages_eus _frogs_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/catkin_ws/devel/share/frogs_msgs/msg/robot_armActionFeedback.msg" NAME_WE)
add_dependencies(frogs_msgs_generate_messages_eus _frogs_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/catkin_ws/devel/share/frogs_msgs/msg/robot_armActionResult.msg" NAME_WE)
add_dependencies(frogs_msgs_generate_messages_eus _frogs_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/catkin_ws/devel/share/frogs_msgs/msg/robot_armFeedback.msg" NAME_WE)
add_dependencies(frogs_msgs_generate_messages_eus _frogs_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(frogs_msgs_geneus)
add_dependencies(frogs_msgs_geneus frogs_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS frogs_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(frogs_msgs
  "/home/ros/catkin_ws/devel/share/frogs_msgs/msg/robot_armAction.msg"
  "${MSG_I_FLAGS}"
  "/home/ros/catkin_ws/devel/share/frogs_msgs/msg/robot_armGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/ros/catkin_ws/devel/share/frogs_msgs/msg/robot_armActionFeedback.msg;/home/ros/catkin_ws/devel/share/frogs_msgs/msg/robot_armResult.msg;/home/ros/catkin_ws/devel/share/frogs_msgs/msg/robot_armActionResult.msg;/home/ros/catkin_ws/devel/share/frogs_msgs/msg/robot_armActionGoal.msg;/home/ros/catkin_ws/devel/share/frogs_msgs/msg/robot_armFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/frogs_msgs
)
_generate_msg_lisp(frogs_msgs
  "/home/ros/catkin_ws/devel/share/frogs_msgs/msg/robot_armGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/frogs_msgs
)
_generate_msg_lisp(frogs_msgs
  "/home/ros/catkin_ws/devel/share/frogs_msgs/msg/robot_armResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/frogs_msgs
)
_generate_msg_lisp(frogs_msgs
  "/home/ros/catkin_ws/devel/share/frogs_msgs/msg/robot_armActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/ros/catkin_ws/devel/share/frogs_msgs/msg/robot_armFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/frogs_msgs
)
_generate_msg_lisp(frogs_msgs
  "/home/ros/catkin_ws/devel/share/frogs_msgs/msg/robot_armFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/frogs_msgs
)
_generate_msg_lisp(frogs_msgs
  "/home/ros/catkin_ws/devel/share/frogs_msgs/msg/robot_armActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/ros/catkin_ws/devel/share/frogs_msgs/msg/robot_armGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/frogs_msgs
)
_generate_msg_lisp(frogs_msgs
  "/home/ros/catkin_ws/devel/share/frogs_msgs/msg/robot_armActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/ros/catkin_ws/devel/share/frogs_msgs/msg/robot_armResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/frogs_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(frogs_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/frogs_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(frogs_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(frogs_msgs_generate_messages frogs_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ros/catkin_ws/devel/share/frogs_msgs/msg/robot_armAction.msg" NAME_WE)
add_dependencies(frogs_msgs_generate_messages_lisp _frogs_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/catkin_ws/devel/share/frogs_msgs/msg/robot_armActionGoal.msg" NAME_WE)
add_dependencies(frogs_msgs_generate_messages_lisp _frogs_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/catkin_ws/devel/share/frogs_msgs/msg/robot_armResult.msg" NAME_WE)
add_dependencies(frogs_msgs_generate_messages_lisp _frogs_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/catkin_ws/devel/share/frogs_msgs/msg/robot_armGoal.msg" NAME_WE)
add_dependencies(frogs_msgs_generate_messages_lisp _frogs_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/catkin_ws/devel/share/frogs_msgs/msg/robot_armActionFeedback.msg" NAME_WE)
add_dependencies(frogs_msgs_generate_messages_lisp _frogs_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/catkin_ws/devel/share/frogs_msgs/msg/robot_armActionResult.msg" NAME_WE)
add_dependencies(frogs_msgs_generate_messages_lisp _frogs_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/catkin_ws/devel/share/frogs_msgs/msg/robot_armFeedback.msg" NAME_WE)
add_dependencies(frogs_msgs_generate_messages_lisp _frogs_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(frogs_msgs_genlisp)
add_dependencies(frogs_msgs_genlisp frogs_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS frogs_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(frogs_msgs
  "/home/ros/catkin_ws/devel/share/frogs_msgs/msg/robot_armAction.msg"
  "${MSG_I_FLAGS}"
  "/home/ros/catkin_ws/devel/share/frogs_msgs/msg/robot_armGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/ros/catkin_ws/devel/share/frogs_msgs/msg/robot_armActionFeedback.msg;/home/ros/catkin_ws/devel/share/frogs_msgs/msg/robot_armResult.msg;/home/ros/catkin_ws/devel/share/frogs_msgs/msg/robot_armActionResult.msg;/home/ros/catkin_ws/devel/share/frogs_msgs/msg/robot_armActionGoal.msg;/home/ros/catkin_ws/devel/share/frogs_msgs/msg/robot_armFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/frogs_msgs
)
_generate_msg_nodejs(frogs_msgs
  "/home/ros/catkin_ws/devel/share/frogs_msgs/msg/robot_armGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/frogs_msgs
)
_generate_msg_nodejs(frogs_msgs
  "/home/ros/catkin_ws/devel/share/frogs_msgs/msg/robot_armResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/frogs_msgs
)
_generate_msg_nodejs(frogs_msgs
  "/home/ros/catkin_ws/devel/share/frogs_msgs/msg/robot_armActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/ros/catkin_ws/devel/share/frogs_msgs/msg/robot_armFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/frogs_msgs
)
_generate_msg_nodejs(frogs_msgs
  "/home/ros/catkin_ws/devel/share/frogs_msgs/msg/robot_armFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/frogs_msgs
)
_generate_msg_nodejs(frogs_msgs
  "/home/ros/catkin_ws/devel/share/frogs_msgs/msg/robot_armActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/ros/catkin_ws/devel/share/frogs_msgs/msg/robot_armGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/frogs_msgs
)
_generate_msg_nodejs(frogs_msgs
  "/home/ros/catkin_ws/devel/share/frogs_msgs/msg/robot_armActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/ros/catkin_ws/devel/share/frogs_msgs/msg/robot_armResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/frogs_msgs
)

### Generating Services

### Generating Module File
_generate_module_nodejs(frogs_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/frogs_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(frogs_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(frogs_msgs_generate_messages frogs_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ros/catkin_ws/devel/share/frogs_msgs/msg/robot_armAction.msg" NAME_WE)
add_dependencies(frogs_msgs_generate_messages_nodejs _frogs_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/catkin_ws/devel/share/frogs_msgs/msg/robot_armActionGoal.msg" NAME_WE)
add_dependencies(frogs_msgs_generate_messages_nodejs _frogs_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/catkin_ws/devel/share/frogs_msgs/msg/robot_armResult.msg" NAME_WE)
add_dependencies(frogs_msgs_generate_messages_nodejs _frogs_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/catkin_ws/devel/share/frogs_msgs/msg/robot_armGoal.msg" NAME_WE)
add_dependencies(frogs_msgs_generate_messages_nodejs _frogs_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/catkin_ws/devel/share/frogs_msgs/msg/robot_armActionFeedback.msg" NAME_WE)
add_dependencies(frogs_msgs_generate_messages_nodejs _frogs_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/catkin_ws/devel/share/frogs_msgs/msg/robot_armActionResult.msg" NAME_WE)
add_dependencies(frogs_msgs_generate_messages_nodejs _frogs_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/catkin_ws/devel/share/frogs_msgs/msg/robot_armFeedback.msg" NAME_WE)
add_dependencies(frogs_msgs_generate_messages_nodejs _frogs_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(frogs_msgs_gennodejs)
add_dependencies(frogs_msgs_gennodejs frogs_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS frogs_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(frogs_msgs
  "/home/ros/catkin_ws/devel/share/frogs_msgs/msg/robot_armAction.msg"
  "${MSG_I_FLAGS}"
  "/home/ros/catkin_ws/devel/share/frogs_msgs/msg/robot_armGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/ros/catkin_ws/devel/share/frogs_msgs/msg/robot_armActionFeedback.msg;/home/ros/catkin_ws/devel/share/frogs_msgs/msg/robot_armResult.msg;/home/ros/catkin_ws/devel/share/frogs_msgs/msg/robot_armActionResult.msg;/home/ros/catkin_ws/devel/share/frogs_msgs/msg/robot_armActionGoal.msg;/home/ros/catkin_ws/devel/share/frogs_msgs/msg/robot_armFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/frogs_msgs
)
_generate_msg_py(frogs_msgs
  "/home/ros/catkin_ws/devel/share/frogs_msgs/msg/robot_armGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/frogs_msgs
)
_generate_msg_py(frogs_msgs
  "/home/ros/catkin_ws/devel/share/frogs_msgs/msg/robot_armResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/frogs_msgs
)
_generate_msg_py(frogs_msgs
  "/home/ros/catkin_ws/devel/share/frogs_msgs/msg/robot_armActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/ros/catkin_ws/devel/share/frogs_msgs/msg/robot_armFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/frogs_msgs
)
_generate_msg_py(frogs_msgs
  "/home/ros/catkin_ws/devel/share/frogs_msgs/msg/robot_armFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/frogs_msgs
)
_generate_msg_py(frogs_msgs
  "/home/ros/catkin_ws/devel/share/frogs_msgs/msg/robot_armActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/ros/catkin_ws/devel/share/frogs_msgs/msg/robot_armGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/frogs_msgs
)
_generate_msg_py(frogs_msgs
  "/home/ros/catkin_ws/devel/share/frogs_msgs/msg/robot_armActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/ros/catkin_ws/devel/share/frogs_msgs/msg/robot_armResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/frogs_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(frogs_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/frogs_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(frogs_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(frogs_msgs_generate_messages frogs_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ros/catkin_ws/devel/share/frogs_msgs/msg/robot_armAction.msg" NAME_WE)
add_dependencies(frogs_msgs_generate_messages_py _frogs_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/catkin_ws/devel/share/frogs_msgs/msg/robot_armActionGoal.msg" NAME_WE)
add_dependencies(frogs_msgs_generate_messages_py _frogs_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/catkin_ws/devel/share/frogs_msgs/msg/robot_armResult.msg" NAME_WE)
add_dependencies(frogs_msgs_generate_messages_py _frogs_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/catkin_ws/devel/share/frogs_msgs/msg/robot_armGoal.msg" NAME_WE)
add_dependencies(frogs_msgs_generate_messages_py _frogs_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/catkin_ws/devel/share/frogs_msgs/msg/robot_armActionFeedback.msg" NAME_WE)
add_dependencies(frogs_msgs_generate_messages_py _frogs_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/catkin_ws/devel/share/frogs_msgs/msg/robot_armActionResult.msg" NAME_WE)
add_dependencies(frogs_msgs_generate_messages_py _frogs_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/catkin_ws/devel/share/frogs_msgs/msg/robot_armFeedback.msg" NAME_WE)
add_dependencies(frogs_msgs_generate_messages_py _frogs_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(frogs_msgs_genpy)
add_dependencies(frogs_msgs_genpy frogs_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS frogs_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/frogs_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/frogs_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(frogs_msgs_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/frogs_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/frogs_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(frogs_msgs_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/frogs_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/frogs_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(frogs_msgs_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/frogs_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/frogs_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(frogs_msgs_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/frogs_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/frogs_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/frogs_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(frogs_msgs_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
