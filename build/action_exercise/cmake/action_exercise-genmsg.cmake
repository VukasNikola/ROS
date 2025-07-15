# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "action_exercise: 7 messages, 0 services")

set(MSG_I_FLAGS "-Iaction_exercise:/home/nikolavukas/exercises_ws/devel/.private/action_exercise/share/action_exercise/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/noetic/share/actionlib_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(action_exercise_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/nikolavukas/exercises_ws/devel/.private/action_exercise/share/action_exercise/msg/ChargingAction.msg" NAME_WE)
add_custom_target(_action_exercise_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "action_exercise" "/home/nikolavukas/exercises_ws/devel/.private/action_exercise/share/action_exercise/msg/ChargingAction.msg" "action_exercise/ChargingGoal:actionlib_msgs/GoalStatus:std_msgs/Header:action_exercise/ChargingActionFeedback:action_exercise/ChargingFeedback:actionlib_msgs/GoalID:action_exercise/ChargingResult:action_exercise/ChargingActionGoal:action_exercise/ChargingActionResult"
)

get_filename_component(_filename "/home/nikolavukas/exercises_ws/devel/.private/action_exercise/share/action_exercise/msg/ChargingActionGoal.msg" NAME_WE)
add_custom_target(_action_exercise_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "action_exercise" "/home/nikolavukas/exercises_ws/devel/.private/action_exercise/share/action_exercise/msg/ChargingActionGoal.msg" "actionlib_msgs/GoalID:std_msgs/Header:action_exercise/ChargingGoal"
)

get_filename_component(_filename "/home/nikolavukas/exercises_ws/devel/.private/action_exercise/share/action_exercise/msg/ChargingActionResult.msg" NAME_WE)
add_custom_target(_action_exercise_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "action_exercise" "/home/nikolavukas/exercises_ws/devel/.private/action_exercise/share/action_exercise/msg/ChargingActionResult.msg" "actionlib_msgs/GoalID:std_msgs/Header:action_exercise/ChargingResult:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/nikolavukas/exercises_ws/devel/.private/action_exercise/share/action_exercise/msg/ChargingActionFeedback.msg" NAME_WE)
add_custom_target(_action_exercise_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "action_exercise" "/home/nikolavukas/exercises_ws/devel/.private/action_exercise/share/action_exercise/msg/ChargingActionFeedback.msg" "actionlib_msgs/GoalID:std_msgs/Header:actionlib_msgs/GoalStatus:action_exercise/ChargingFeedback"
)

get_filename_component(_filename "/home/nikolavukas/exercises_ws/devel/.private/action_exercise/share/action_exercise/msg/ChargingGoal.msg" NAME_WE)
add_custom_target(_action_exercise_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "action_exercise" "/home/nikolavukas/exercises_ws/devel/.private/action_exercise/share/action_exercise/msg/ChargingGoal.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/nikolavukas/exercises_ws/devel/.private/action_exercise/share/action_exercise/msg/ChargingResult.msg" NAME_WE)
add_custom_target(_action_exercise_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "action_exercise" "/home/nikolavukas/exercises_ws/devel/.private/action_exercise/share/action_exercise/msg/ChargingResult.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/nikolavukas/exercises_ws/devel/.private/action_exercise/share/action_exercise/msg/ChargingFeedback.msg" NAME_WE)
add_custom_target(_action_exercise_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "action_exercise" "/home/nikolavukas/exercises_ws/devel/.private/action_exercise/share/action_exercise/msg/ChargingFeedback.msg" "std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(action_exercise
  "/home/nikolavukas/exercises_ws/devel/.private/action_exercise/share/action_exercise/msg/ChargingAction.msg"
  "${MSG_I_FLAGS}"
  "/home/nikolavukas/exercises_ws/devel/.private/action_exercise/share/action_exercise/msg/ChargingGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/nikolavukas/exercises_ws/devel/.private/action_exercise/share/action_exercise/msg/ChargingActionFeedback.msg;/home/nikolavukas/exercises_ws/devel/.private/action_exercise/share/action_exercise/msg/ChargingFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/nikolavukas/exercises_ws/devel/.private/action_exercise/share/action_exercise/msg/ChargingResult.msg;/home/nikolavukas/exercises_ws/devel/.private/action_exercise/share/action_exercise/msg/ChargingActionGoal.msg;/home/nikolavukas/exercises_ws/devel/.private/action_exercise/share/action_exercise/msg/ChargingActionResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/action_exercise
)
_generate_msg_cpp(action_exercise
  "/home/nikolavukas/exercises_ws/devel/.private/action_exercise/share/action_exercise/msg/ChargingActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/nikolavukas/exercises_ws/devel/.private/action_exercise/share/action_exercise/msg/ChargingGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/action_exercise
)
_generate_msg_cpp(action_exercise
  "/home/nikolavukas/exercises_ws/devel/.private/action_exercise/share/action_exercise/msg/ChargingActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/nikolavukas/exercises_ws/devel/.private/action_exercise/share/action_exercise/msg/ChargingResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/action_exercise
)
_generate_msg_cpp(action_exercise
  "/home/nikolavukas/exercises_ws/devel/.private/action_exercise/share/action_exercise/msg/ChargingActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/nikolavukas/exercises_ws/devel/.private/action_exercise/share/action_exercise/msg/ChargingFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/action_exercise
)
_generate_msg_cpp(action_exercise
  "/home/nikolavukas/exercises_ws/devel/.private/action_exercise/share/action_exercise/msg/ChargingGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/action_exercise
)
_generate_msg_cpp(action_exercise
  "/home/nikolavukas/exercises_ws/devel/.private/action_exercise/share/action_exercise/msg/ChargingResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/action_exercise
)
_generate_msg_cpp(action_exercise
  "/home/nikolavukas/exercises_ws/devel/.private/action_exercise/share/action_exercise/msg/ChargingFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/action_exercise
)

### Generating Services

### Generating Module File
_generate_module_cpp(action_exercise
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/action_exercise
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(action_exercise_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(action_exercise_generate_messages action_exercise_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nikolavukas/exercises_ws/devel/.private/action_exercise/share/action_exercise/msg/ChargingAction.msg" NAME_WE)
add_dependencies(action_exercise_generate_messages_cpp _action_exercise_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nikolavukas/exercises_ws/devel/.private/action_exercise/share/action_exercise/msg/ChargingActionGoal.msg" NAME_WE)
add_dependencies(action_exercise_generate_messages_cpp _action_exercise_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nikolavukas/exercises_ws/devel/.private/action_exercise/share/action_exercise/msg/ChargingActionResult.msg" NAME_WE)
add_dependencies(action_exercise_generate_messages_cpp _action_exercise_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nikolavukas/exercises_ws/devel/.private/action_exercise/share/action_exercise/msg/ChargingActionFeedback.msg" NAME_WE)
add_dependencies(action_exercise_generate_messages_cpp _action_exercise_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nikolavukas/exercises_ws/devel/.private/action_exercise/share/action_exercise/msg/ChargingGoal.msg" NAME_WE)
add_dependencies(action_exercise_generate_messages_cpp _action_exercise_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nikolavukas/exercises_ws/devel/.private/action_exercise/share/action_exercise/msg/ChargingResult.msg" NAME_WE)
add_dependencies(action_exercise_generate_messages_cpp _action_exercise_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nikolavukas/exercises_ws/devel/.private/action_exercise/share/action_exercise/msg/ChargingFeedback.msg" NAME_WE)
add_dependencies(action_exercise_generate_messages_cpp _action_exercise_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(action_exercise_gencpp)
add_dependencies(action_exercise_gencpp action_exercise_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS action_exercise_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(action_exercise
  "/home/nikolavukas/exercises_ws/devel/.private/action_exercise/share/action_exercise/msg/ChargingAction.msg"
  "${MSG_I_FLAGS}"
  "/home/nikolavukas/exercises_ws/devel/.private/action_exercise/share/action_exercise/msg/ChargingGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/nikolavukas/exercises_ws/devel/.private/action_exercise/share/action_exercise/msg/ChargingActionFeedback.msg;/home/nikolavukas/exercises_ws/devel/.private/action_exercise/share/action_exercise/msg/ChargingFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/nikolavukas/exercises_ws/devel/.private/action_exercise/share/action_exercise/msg/ChargingResult.msg;/home/nikolavukas/exercises_ws/devel/.private/action_exercise/share/action_exercise/msg/ChargingActionGoal.msg;/home/nikolavukas/exercises_ws/devel/.private/action_exercise/share/action_exercise/msg/ChargingActionResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/action_exercise
)
_generate_msg_eus(action_exercise
  "/home/nikolavukas/exercises_ws/devel/.private/action_exercise/share/action_exercise/msg/ChargingActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/nikolavukas/exercises_ws/devel/.private/action_exercise/share/action_exercise/msg/ChargingGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/action_exercise
)
_generate_msg_eus(action_exercise
  "/home/nikolavukas/exercises_ws/devel/.private/action_exercise/share/action_exercise/msg/ChargingActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/nikolavukas/exercises_ws/devel/.private/action_exercise/share/action_exercise/msg/ChargingResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/action_exercise
)
_generate_msg_eus(action_exercise
  "/home/nikolavukas/exercises_ws/devel/.private/action_exercise/share/action_exercise/msg/ChargingActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/nikolavukas/exercises_ws/devel/.private/action_exercise/share/action_exercise/msg/ChargingFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/action_exercise
)
_generate_msg_eus(action_exercise
  "/home/nikolavukas/exercises_ws/devel/.private/action_exercise/share/action_exercise/msg/ChargingGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/action_exercise
)
_generate_msg_eus(action_exercise
  "/home/nikolavukas/exercises_ws/devel/.private/action_exercise/share/action_exercise/msg/ChargingResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/action_exercise
)
_generate_msg_eus(action_exercise
  "/home/nikolavukas/exercises_ws/devel/.private/action_exercise/share/action_exercise/msg/ChargingFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/action_exercise
)

### Generating Services

### Generating Module File
_generate_module_eus(action_exercise
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/action_exercise
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(action_exercise_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(action_exercise_generate_messages action_exercise_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nikolavukas/exercises_ws/devel/.private/action_exercise/share/action_exercise/msg/ChargingAction.msg" NAME_WE)
add_dependencies(action_exercise_generate_messages_eus _action_exercise_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nikolavukas/exercises_ws/devel/.private/action_exercise/share/action_exercise/msg/ChargingActionGoal.msg" NAME_WE)
add_dependencies(action_exercise_generate_messages_eus _action_exercise_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nikolavukas/exercises_ws/devel/.private/action_exercise/share/action_exercise/msg/ChargingActionResult.msg" NAME_WE)
add_dependencies(action_exercise_generate_messages_eus _action_exercise_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nikolavukas/exercises_ws/devel/.private/action_exercise/share/action_exercise/msg/ChargingActionFeedback.msg" NAME_WE)
add_dependencies(action_exercise_generate_messages_eus _action_exercise_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nikolavukas/exercises_ws/devel/.private/action_exercise/share/action_exercise/msg/ChargingGoal.msg" NAME_WE)
add_dependencies(action_exercise_generate_messages_eus _action_exercise_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nikolavukas/exercises_ws/devel/.private/action_exercise/share/action_exercise/msg/ChargingResult.msg" NAME_WE)
add_dependencies(action_exercise_generate_messages_eus _action_exercise_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nikolavukas/exercises_ws/devel/.private/action_exercise/share/action_exercise/msg/ChargingFeedback.msg" NAME_WE)
add_dependencies(action_exercise_generate_messages_eus _action_exercise_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(action_exercise_geneus)
add_dependencies(action_exercise_geneus action_exercise_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS action_exercise_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(action_exercise
  "/home/nikolavukas/exercises_ws/devel/.private/action_exercise/share/action_exercise/msg/ChargingAction.msg"
  "${MSG_I_FLAGS}"
  "/home/nikolavukas/exercises_ws/devel/.private/action_exercise/share/action_exercise/msg/ChargingGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/nikolavukas/exercises_ws/devel/.private/action_exercise/share/action_exercise/msg/ChargingActionFeedback.msg;/home/nikolavukas/exercises_ws/devel/.private/action_exercise/share/action_exercise/msg/ChargingFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/nikolavukas/exercises_ws/devel/.private/action_exercise/share/action_exercise/msg/ChargingResult.msg;/home/nikolavukas/exercises_ws/devel/.private/action_exercise/share/action_exercise/msg/ChargingActionGoal.msg;/home/nikolavukas/exercises_ws/devel/.private/action_exercise/share/action_exercise/msg/ChargingActionResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/action_exercise
)
_generate_msg_lisp(action_exercise
  "/home/nikolavukas/exercises_ws/devel/.private/action_exercise/share/action_exercise/msg/ChargingActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/nikolavukas/exercises_ws/devel/.private/action_exercise/share/action_exercise/msg/ChargingGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/action_exercise
)
_generate_msg_lisp(action_exercise
  "/home/nikolavukas/exercises_ws/devel/.private/action_exercise/share/action_exercise/msg/ChargingActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/nikolavukas/exercises_ws/devel/.private/action_exercise/share/action_exercise/msg/ChargingResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/action_exercise
)
_generate_msg_lisp(action_exercise
  "/home/nikolavukas/exercises_ws/devel/.private/action_exercise/share/action_exercise/msg/ChargingActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/nikolavukas/exercises_ws/devel/.private/action_exercise/share/action_exercise/msg/ChargingFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/action_exercise
)
_generate_msg_lisp(action_exercise
  "/home/nikolavukas/exercises_ws/devel/.private/action_exercise/share/action_exercise/msg/ChargingGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/action_exercise
)
_generate_msg_lisp(action_exercise
  "/home/nikolavukas/exercises_ws/devel/.private/action_exercise/share/action_exercise/msg/ChargingResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/action_exercise
)
_generate_msg_lisp(action_exercise
  "/home/nikolavukas/exercises_ws/devel/.private/action_exercise/share/action_exercise/msg/ChargingFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/action_exercise
)

### Generating Services

### Generating Module File
_generate_module_lisp(action_exercise
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/action_exercise
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(action_exercise_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(action_exercise_generate_messages action_exercise_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nikolavukas/exercises_ws/devel/.private/action_exercise/share/action_exercise/msg/ChargingAction.msg" NAME_WE)
add_dependencies(action_exercise_generate_messages_lisp _action_exercise_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nikolavukas/exercises_ws/devel/.private/action_exercise/share/action_exercise/msg/ChargingActionGoal.msg" NAME_WE)
add_dependencies(action_exercise_generate_messages_lisp _action_exercise_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nikolavukas/exercises_ws/devel/.private/action_exercise/share/action_exercise/msg/ChargingActionResult.msg" NAME_WE)
add_dependencies(action_exercise_generate_messages_lisp _action_exercise_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nikolavukas/exercises_ws/devel/.private/action_exercise/share/action_exercise/msg/ChargingActionFeedback.msg" NAME_WE)
add_dependencies(action_exercise_generate_messages_lisp _action_exercise_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nikolavukas/exercises_ws/devel/.private/action_exercise/share/action_exercise/msg/ChargingGoal.msg" NAME_WE)
add_dependencies(action_exercise_generate_messages_lisp _action_exercise_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nikolavukas/exercises_ws/devel/.private/action_exercise/share/action_exercise/msg/ChargingResult.msg" NAME_WE)
add_dependencies(action_exercise_generate_messages_lisp _action_exercise_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nikolavukas/exercises_ws/devel/.private/action_exercise/share/action_exercise/msg/ChargingFeedback.msg" NAME_WE)
add_dependencies(action_exercise_generate_messages_lisp _action_exercise_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(action_exercise_genlisp)
add_dependencies(action_exercise_genlisp action_exercise_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS action_exercise_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(action_exercise
  "/home/nikolavukas/exercises_ws/devel/.private/action_exercise/share/action_exercise/msg/ChargingAction.msg"
  "${MSG_I_FLAGS}"
  "/home/nikolavukas/exercises_ws/devel/.private/action_exercise/share/action_exercise/msg/ChargingGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/nikolavukas/exercises_ws/devel/.private/action_exercise/share/action_exercise/msg/ChargingActionFeedback.msg;/home/nikolavukas/exercises_ws/devel/.private/action_exercise/share/action_exercise/msg/ChargingFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/nikolavukas/exercises_ws/devel/.private/action_exercise/share/action_exercise/msg/ChargingResult.msg;/home/nikolavukas/exercises_ws/devel/.private/action_exercise/share/action_exercise/msg/ChargingActionGoal.msg;/home/nikolavukas/exercises_ws/devel/.private/action_exercise/share/action_exercise/msg/ChargingActionResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/action_exercise
)
_generate_msg_nodejs(action_exercise
  "/home/nikolavukas/exercises_ws/devel/.private/action_exercise/share/action_exercise/msg/ChargingActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/nikolavukas/exercises_ws/devel/.private/action_exercise/share/action_exercise/msg/ChargingGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/action_exercise
)
_generate_msg_nodejs(action_exercise
  "/home/nikolavukas/exercises_ws/devel/.private/action_exercise/share/action_exercise/msg/ChargingActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/nikolavukas/exercises_ws/devel/.private/action_exercise/share/action_exercise/msg/ChargingResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/action_exercise
)
_generate_msg_nodejs(action_exercise
  "/home/nikolavukas/exercises_ws/devel/.private/action_exercise/share/action_exercise/msg/ChargingActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/nikolavukas/exercises_ws/devel/.private/action_exercise/share/action_exercise/msg/ChargingFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/action_exercise
)
_generate_msg_nodejs(action_exercise
  "/home/nikolavukas/exercises_ws/devel/.private/action_exercise/share/action_exercise/msg/ChargingGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/action_exercise
)
_generate_msg_nodejs(action_exercise
  "/home/nikolavukas/exercises_ws/devel/.private/action_exercise/share/action_exercise/msg/ChargingResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/action_exercise
)
_generate_msg_nodejs(action_exercise
  "/home/nikolavukas/exercises_ws/devel/.private/action_exercise/share/action_exercise/msg/ChargingFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/action_exercise
)

### Generating Services

### Generating Module File
_generate_module_nodejs(action_exercise
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/action_exercise
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(action_exercise_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(action_exercise_generate_messages action_exercise_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nikolavukas/exercises_ws/devel/.private/action_exercise/share/action_exercise/msg/ChargingAction.msg" NAME_WE)
add_dependencies(action_exercise_generate_messages_nodejs _action_exercise_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nikolavukas/exercises_ws/devel/.private/action_exercise/share/action_exercise/msg/ChargingActionGoal.msg" NAME_WE)
add_dependencies(action_exercise_generate_messages_nodejs _action_exercise_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nikolavukas/exercises_ws/devel/.private/action_exercise/share/action_exercise/msg/ChargingActionResult.msg" NAME_WE)
add_dependencies(action_exercise_generate_messages_nodejs _action_exercise_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nikolavukas/exercises_ws/devel/.private/action_exercise/share/action_exercise/msg/ChargingActionFeedback.msg" NAME_WE)
add_dependencies(action_exercise_generate_messages_nodejs _action_exercise_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nikolavukas/exercises_ws/devel/.private/action_exercise/share/action_exercise/msg/ChargingGoal.msg" NAME_WE)
add_dependencies(action_exercise_generate_messages_nodejs _action_exercise_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nikolavukas/exercises_ws/devel/.private/action_exercise/share/action_exercise/msg/ChargingResult.msg" NAME_WE)
add_dependencies(action_exercise_generate_messages_nodejs _action_exercise_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nikolavukas/exercises_ws/devel/.private/action_exercise/share/action_exercise/msg/ChargingFeedback.msg" NAME_WE)
add_dependencies(action_exercise_generate_messages_nodejs _action_exercise_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(action_exercise_gennodejs)
add_dependencies(action_exercise_gennodejs action_exercise_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS action_exercise_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(action_exercise
  "/home/nikolavukas/exercises_ws/devel/.private/action_exercise/share/action_exercise/msg/ChargingAction.msg"
  "${MSG_I_FLAGS}"
  "/home/nikolavukas/exercises_ws/devel/.private/action_exercise/share/action_exercise/msg/ChargingGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/nikolavukas/exercises_ws/devel/.private/action_exercise/share/action_exercise/msg/ChargingActionFeedback.msg;/home/nikolavukas/exercises_ws/devel/.private/action_exercise/share/action_exercise/msg/ChargingFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/nikolavukas/exercises_ws/devel/.private/action_exercise/share/action_exercise/msg/ChargingResult.msg;/home/nikolavukas/exercises_ws/devel/.private/action_exercise/share/action_exercise/msg/ChargingActionGoal.msg;/home/nikolavukas/exercises_ws/devel/.private/action_exercise/share/action_exercise/msg/ChargingActionResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/action_exercise
)
_generate_msg_py(action_exercise
  "/home/nikolavukas/exercises_ws/devel/.private/action_exercise/share/action_exercise/msg/ChargingActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/nikolavukas/exercises_ws/devel/.private/action_exercise/share/action_exercise/msg/ChargingGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/action_exercise
)
_generate_msg_py(action_exercise
  "/home/nikolavukas/exercises_ws/devel/.private/action_exercise/share/action_exercise/msg/ChargingActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/nikolavukas/exercises_ws/devel/.private/action_exercise/share/action_exercise/msg/ChargingResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/action_exercise
)
_generate_msg_py(action_exercise
  "/home/nikolavukas/exercises_ws/devel/.private/action_exercise/share/action_exercise/msg/ChargingActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/nikolavukas/exercises_ws/devel/.private/action_exercise/share/action_exercise/msg/ChargingFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/action_exercise
)
_generate_msg_py(action_exercise
  "/home/nikolavukas/exercises_ws/devel/.private/action_exercise/share/action_exercise/msg/ChargingGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/action_exercise
)
_generate_msg_py(action_exercise
  "/home/nikolavukas/exercises_ws/devel/.private/action_exercise/share/action_exercise/msg/ChargingResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/action_exercise
)
_generate_msg_py(action_exercise
  "/home/nikolavukas/exercises_ws/devel/.private/action_exercise/share/action_exercise/msg/ChargingFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/action_exercise
)

### Generating Services

### Generating Module File
_generate_module_py(action_exercise
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/action_exercise
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(action_exercise_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(action_exercise_generate_messages action_exercise_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nikolavukas/exercises_ws/devel/.private/action_exercise/share/action_exercise/msg/ChargingAction.msg" NAME_WE)
add_dependencies(action_exercise_generate_messages_py _action_exercise_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nikolavukas/exercises_ws/devel/.private/action_exercise/share/action_exercise/msg/ChargingActionGoal.msg" NAME_WE)
add_dependencies(action_exercise_generate_messages_py _action_exercise_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nikolavukas/exercises_ws/devel/.private/action_exercise/share/action_exercise/msg/ChargingActionResult.msg" NAME_WE)
add_dependencies(action_exercise_generate_messages_py _action_exercise_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nikolavukas/exercises_ws/devel/.private/action_exercise/share/action_exercise/msg/ChargingActionFeedback.msg" NAME_WE)
add_dependencies(action_exercise_generate_messages_py _action_exercise_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nikolavukas/exercises_ws/devel/.private/action_exercise/share/action_exercise/msg/ChargingGoal.msg" NAME_WE)
add_dependencies(action_exercise_generate_messages_py _action_exercise_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nikolavukas/exercises_ws/devel/.private/action_exercise/share/action_exercise/msg/ChargingResult.msg" NAME_WE)
add_dependencies(action_exercise_generate_messages_py _action_exercise_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nikolavukas/exercises_ws/devel/.private/action_exercise/share/action_exercise/msg/ChargingFeedback.msg" NAME_WE)
add_dependencies(action_exercise_generate_messages_py _action_exercise_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(action_exercise_genpy)
add_dependencies(action_exercise_genpy action_exercise_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS action_exercise_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/action_exercise)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/action_exercise
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(action_exercise_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(action_exercise_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/action_exercise)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/action_exercise
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(action_exercise_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(action_exercise_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/action_exercise)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/action_exercise
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(action_exercise_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(action_exercise_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/action_exercise)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/action_exercise
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(action_exercise_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(action_exercise_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/action_exercise)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/action_exercise\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/action_exercise
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(action_exercise_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(action_exercise_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
