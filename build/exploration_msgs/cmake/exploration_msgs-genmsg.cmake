# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "exploration_msgs: 8 messages, 0 services")

set(MSG_I_FLAGS "-Iexploration_msgs:/home/ros/catkin_ws/src/multiple_robots_slam/exploration_msgs/msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(exploration_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/ros/catkin_ws/src/multiple_robots_slam/exploration_msgs/msg/PointArray.msg" NAME_WE)
add_custom_target(_exploration_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "exploration_msgs" "/home/ros/catkin_ws/src/multiple_robots_slam/exploration_msgs/msg/PointArray.msg" "std_msgs/Header:geometry_msgs/Point"
)

get_filename_component(_filename "/home/ros/catkin_ws/src/multiple_robots_slam/exploration_msgs/msg/Frontier.msg" NAME_WE)
add_custom_target(_exploration_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "exploration_msgs" "/home/ros/catkin_ws/src/multiple_robots_slam/exploration_msgs/msg/Frontier.msg" "geometry_msgs/Point:geometry_msgs/Vector3"
)

get_filename_component(_filename "/home/ros/catkin_ws/src/multiple_robots_slam/exploration_msgs/msg/RobotInfo.msg" NAME_WE)
add_custom_target(_exploration_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "exploration_msgs" "/home/ros/catkin_ws/src/multiple_robots_slam/exploration_msgs/msg/RobotInfo.msg" "geometry_msgs/Quaternion:geometry_msgs/Pose:geometry_msgs/Point"
)

get_filename_component(_filename "/home/ros/catkin_ws/src/multiple_robots_slam/exploration_msgs/msg/RobotInfoArray.msg" NAME_WE)
add_custom_target(_exploration_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "exploration_msgs" "/home/ros/catkin_ws/src/multiple_robots_slam/exploration_msgs/msg/RobotInfoArray.msg" "geometry_msgs/Quaternion:exploration_msgs/RobotInfo:geometry_msgs/Pose:std_msgs/Header:geometry_msgs/Point"
)

get_filename_component(_filename "/home/ros/catkin_ws/src/multiple_robots_slam/exploration_msgs/msg/BranchArray.msg" NAME_WE)
add_custom_target(_exploration_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "exploration_msgs" "/home/ros/catkin_ws/src/multiple_robots_slam/exploration_msgs/msg/BranchArray.msg" "geometry_msgs/Point:std_msgs/Header:exploration_msgs/Branch"
)

get_filename_component(_filename "/home/ros/catkin_ws/src/multiple_robots_slam/exploration_msgs/msg/AvoidanceStatus.msg" NAME_WE)
add_custom_target(_exploration_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "exploration_msgs" "/home/ros/catkin_ws/src/multiple_robots_slam/exploration_msgs/msg/AvoidanceStatus.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/ros/catkin_ws/src/multiple_robots_slam/exploration_msgs/msg/Branch.msg" NAME_WE)
add_custom_target(_exploration_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "exploration_msgs" "/home/ros/catkin_ws/src/multiple_robots_slam/exploration_msgs/msg/Branch.msg" "geometry_msgs/Point"
)

get_filename_component(_filename "/home/ros/catkin_ws/src/multiple_robots_slam/exploration_msgs/msg/FrontierArray.msg" NAME_WE)
add_custom_target(_exploration_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "exploration_msgs" "/home/ros/catkin_ws/src/multiple_robots_slam/exploration_msgs/msg/FrontierArray.msg" "geometry_msgs/Point:geometry_msgs/Vector3:std_msgs/Header:exploration_msgs/Frontier"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(exploration_msgs
  "/home/ros/catkin_ws/src/multiple_robots_slam/exploration_msgs/msg/PointArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/exploration_msgs
)
_generate_msg_cpp(exploration_msgs
  "/home/ros/catkin_ws/src/multiple_robots_slam/exploration_msgs/msg/Frontier.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/exploration_msgs
)
_generate_msg_cpp(exploration_msgs
  "/home/ros/catkin_ws/src/multiple_robots_slam/exploration_msgs/msg/RobotInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/exploration_msgs
)
_generate_msg_cpp(exploration_msgs
  "/home/ros/catkin_ws/src/multiple_robots_slam/exploration_msgs/msg/RobotInfoArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/ros/catkin_ws/src/multiple_robots_slam/exploration_msgs/msg/RobotInfo.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/exploration_msgs
)
_generate_msg_cpp(exploration_msgs
  "/home/ros/catkin_ws/src/multiple_robots_slam/exploration_msgs/msg/BranchArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/ros/catkin_ws/src/multiple_robots_slam/exploration_msgs/msg/Branch.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/exploration_msgs
)
_generate_msg_cpp(exploration_msgs
  "/home/ros/catkin_ws/src/multiple_robots_slam/exploration_msgs/msg/AvoidanceStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/exploration_msgs
)
_generate_msg_cpp(exploration_msgs
  "/home/ros/catkin_ws/src/multiple_robots_slam/exploration_msgs/msg/Branch.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/exploration_msgs
)
_generate_msg_cpp(exploration_msgs
  "/home/ros/catkin_ws/src/multiple_robots_slam/exploration_msgs/msg/FrontierArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/ros/catkin_ws/src/multiple_robots_slam/exploration_msgs/msg/Frontier.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/exploration_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(exploration_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/exploration_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(exploration_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(exploration_msgs_generate_messages exploration_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ros/catkin_ws/src/multiple_robots_slam/exploration_msgs/msg/PointArray.msg" NAME_WE)
add_dependencies(exploration_msgs_generate_messages_cpp _exploration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/catkin_ws/src/multiple_robots_slam/exploration_msgs/msg/Frontier.msg" NAME_WE)
add_dependencies(exploration_msgs_generate_messages_cpp _exploration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/catkin_ws/src/multiple_robots_slam/exploration_msgs/msg/RobotInfo.msg" NAME_WE)
add_dependencies(exploration_msgs_generate_messages_cpp _exploration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/catkin_ws/src/multiple_robots_slam/exploration_msgs/msg/RobotInfoArray.msg" NAME_WE)
add_dependencies(exploration_msgs_generate_messages_cpp _exploration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/catkin_ws/src/multiple_robots_slam/exploration_msgs/msg/BranchArray.msg" NAME_WE)
add_dependencies(exploration_msgs_generate_messages_cpp _exploration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/catkin_ws/src/multiple_robots_slam/exploration_msgs/msg/AvoidanceStatus.msg" NAME_WE)
add_dependencies(exploration_msgs_generate_messages_cpp _exploration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/catkin_ws/src/multiple_robots_slam/exploration_msgs/msg/Branch.msg" NAME_WE)
add_dependencies(exploration_msgs_generate_messages_cpp _exploration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/catkin_ws/src/multiple_robots_slam/exploration_msgs/msg/FrontierArray.msg" NAME_WE)
add_dependencies(exploration_msgs_generate_messages_cpp _exploration_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(exploration_msgs_gencpp)
add_dependencies(exploration_msgs_gencpp exploration_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS exploration_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(exploration_msgs
  "/home/ros/catkin_ws/src/multiple_robots_slam/exploration_msgs/msg/PointArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/exploration_msgs
)
_generate_msg_eus(exploration_msgs
  "/home/ros/catkin_ws/src/multiple_robots_slam/exploration_msgs/msg/Frontier.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/exploration_msgs
)
_generate_msg_eus(exploration_msgs
  "/home/ros/catkin_ws/src/multiple_robots_slam/exploration_msgs/msg/RobotInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/exploration_msgs
)
_generate_msg_eus(exploration_msgs
  "/home/ros/catkin_ws/src/multiple_robots_slam/exploration_msgs/msg/RobotInfoArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/ros/catkin_ws/src/multiple_robots_slam/exploration_msgs/msg/RobotInfo.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/exploration_msgs
)
_generate_msg_eus(exploration_msgs
  "/home/ros/catkin_ws/src/multiple_robots_slam/exploration_msgs/msg/BranchArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/ros/catkin_ws/src/multiple_robots_slam/exploration_msgs/msg/Branch.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/exploration_msgs
)
_generate_msg_eus(exploration_msgs
  "/home/ros/catkin_ws/src/multiple_robots_slam/exploration_msgs/msg/AvoidanceStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/exploration_msgs
)
_generate_msg_eus(exploration_msgs
  "/home/ros/catkin_ws/src/multiple_robots_slam/exploration_msgs/msg/Branch.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/exploration_msgs
)
_generate_msg_eus(exploration_msgs
  "/home/ros/catkin_ws/src/multiple_robots_slam/exploration_msgs/msg/FrontierArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/ros/catkin_ws/src/multiple_robots_slam/exploration_msgs/msg/Frontier.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/exploration_msgs
)

### Generating Services

### Generating Module File
_generate_module_eus(exploration_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/exploration_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(exploration_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(exploration_msgs_generate_messages exploration_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ros/catkin_ws/src/multiple_robots_slam/exploration_msgs/msg/PointArray.msg" NAME_WE)
add_dependencies(exploration_msgs_generate_messages_eus _exploration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/catkin_ws/src/multiple_robots_slam/exploration_msgs/msg/Frontier.msg" NAME_WE)
add_dependencies(exploration_msgs_generate_messages_eus _exploration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/catkin_ws/src/multiple_robots_slam/exploration_msgs/msg/RobotInfo.msg" NAME_WE)
add_dependencies(exploration_msgs_generate_messages_eus _exploration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/catkin_ws/src/multiple_robots_slam/exploration_msgs/msg/RobotInfoArray.msg" NAME_WE)
add_dependencies(exploration_msgs_generate_messages_eus _exploration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/catkin_ws/src/multiple_robots_slam/exploration_msgs/msg/BranchArray.msg" NAME_WE)
add_dependencies(exploration_msgs_generate_messages_eus _exploration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/catkin_ws/src/multiple_robots_slam/exploration_msgs/msg/AvoidanceStatus.msg" NAME_WE)
add_dependencies(exploration_msgs_generate_messages_eus _exploration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/catkin_ws/src/multiple_robots_slam/exploration_msgs/msg/Branch.msg" NAME_WE)
add_dependencies(exploration_msgs_generate_messages_eus _exploration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/catkin_ws/src/multiple_robots_slam/exploration_msgs/msg/FrontierArray.msg" NAME_WE)
add_dependencies(exploration_msgs_generate_messages_eus _exploration_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(exploration_msgs_geneus)
add_dependencies(exploration_msgs_geneus exploration_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS exploration_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(exploration_msgs
  "/home/ros/catkin_ws/src/multiple_robots_slam/exploration_msgs/msg/PointArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/exploration_msgs
)
_generate_msg_lisp(exploration_msgs
  "/home/ros/catkin_ws/src/multiple_robots_slam/exploration_msgs/msg/Frontier.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/exploration_msgs
)
_generate_msg_lisp(exploration_msgs
  "/home/ros/catkin_ws/src/multiple_robots_slam/exploration_msgs/msg/RobotInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/exploration_msgs
)
_generate_msg_lisp(exploration_msgs
  "/home/ros/catkin_ws/src/multiple_robots_slam/exploration_msgs/msg/RobotInfoArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/ros/catkin_ws/src/multiple_robots_slam/exploration_msgs/msg/RobotInfo.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/exploration_msgs
)
_generate_msg_lisp(exploration_msgs
  "/home/ros/catkin_ws/src/multiple_robots_slam/exploration_msgs/msg/BranchArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/ros/catkin_ws/src/multiple_robots_slam/exploration_msgs/msg/Branch.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/exploration_msgs
)
_generate_msg_lisp(exploration_msgs
  "/home/ros/catkin_ws/src/multiple_robots_slam/exploration_msgs/msg/AvoidanceStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/exploration_msgs
)
_generate_msg_lisp(exploration_msgs
  "/home/ros/catkin_ws/src/multiple_robots_slam/exploration_msgs/msg/Branch.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/exploration_msgs
)
_generate_msg_lisp(exploration_msgs
  "/home/ros/catkin_ws/src/multiple_robots_slam/exploration_msgs/msg/FrontierArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/ros/catkin_ws/src/multiple_robots_slam/exploration_msgs/msg/Frontier.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/exploration_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(exploration_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/exploration_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(exploration_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(exploration_msgs_generate_messages exploration_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ros/catkin_ws/src/multiple_robots_slam/exploration_msgs/msg/PointArray.msg" NAME_WE)
add_dependencies(exploration_msgs_generate_messages_lisp _exploration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/catkin_ws/src/multiple_robots_slam/exploration_msgs/msg/Frontier.msg" NAME_WE)
add_dependencies(exploration_msgs_generate_messages_lisp _exploration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/catkin_ws/src/multiple_robots_slam/exploration_msgs/msg/RobotInfo.msg" NAME_WE)
add_dependencies(exploration_msgs_generate_messages_lisp _exploration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/catkin_ws/src/multiple_robots_slam/exploration_msgs/msg/RobotInfoArray.msg" NAME_WE)
add_dependencies(exploration_msgs_generate_messages_lisp _exploration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/catkin_ws/src/multiple_robots_slam/exploration_msgs/msg/BranchArray.msg" NAME_WE)
add_dependencies(exploration_msgs_generate_messages_lisp _exploration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/catkin_ws/src/multiple_robots_slam/exploration_msgs/msg/AvoidanceStatus.msg" NAME_WE)
add_dependencies(exploration_msgs_generate_messages_lisp _exploration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/catkin_ws/src/multiple_robots_slam/exploration_msgs/msg/Branch.msg" NAME_WE)
add_dependencies(exploration_msgs_generate_messages_lisp _exploration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/catkin_ws/src/multiple_robots_slam/exploration_msgs/msg/FrontierArray.msg" NAME_WE)
add_dependencies(exploration_msgs_generate_messages_lisp _exploration_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(exploration_msgs_genlisp)
add_dependencies(exploration_msgs_genlisp exploration_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS exploration_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(exploration_msgs
  "/home/ros/catkin_ws/src/multiple_robots_slam/exploration_msgs/msg/PointArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/exploration_msgs
)
_generate_msg_nodejs(exploration_msgs
  "/home/ros/catkin_ws/src/multiple_robots_slam/exploration_msgs/msg/Frontier.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/exploration_msgs
)
_generate_msg_nodejs(exploration_msgs
  "/home/ros/catkin_ws/src/multiple_robots_slam/exploration_msgs/msg/RobotInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/exploration_msgs
)
_generate_msg_nodejs(exploration_msgs
  "/home/ros/catkin_ws/src/multiple_robots_slam/exploration_msgs/msg/RobotInfoArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/ros/catkin_ws/src/multiple_robots_slam/exploration_msgs/msg/RobotInfo.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/exploration_msgs
)
_generate_msg_nodejs(exploration_msgs
  "/home/ros/catkin_ws/src/multiple_robots_slam/exploration_msgs/msg/BranchArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/ros/catkin_ws/src/multiple_robots_slam/exploration_msgs/msg/Branch.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/exploration_msgs
)
_generate_msg_nodejs(exploration_msgs
  "/home/ros/catkin_ws/src/multiple_robots_slam/exploration_msgs/msg/AvoidanceStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/exploration_msgs
)
_generate_msg_nodejs(exploration_msgs
  "/home/ros/catkin_ws/src/multiple_robots_slam/exploration_msgs/msg/Branch.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/exploration_msgs
)
_generate_msg_nodejs(exploration_msgs
  "/home/ros/catkin_ws/src/multiple_robots_slam/exploration_msgs/msg/FrontierArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/ros/catkin_ws/src/multiple_robots_slam/exploration_msgs/msg/Frontier.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/exploration_msgs
)

### Generating Services

### Generating Module File
_generate_module_nodejs(exploration_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/exploration_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(exploration_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(exploration_msgs_generate_messages exploration_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ros/catkin_ws/src/multiple_robots_slam/exploration_msgs/msg/PointArray.msg" NAME_WE)
add_dependencies(exploration_msgs_generate_messages_nodejs _exploration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/catkin_ws/src/multiple_robots_slam/exploration_msgs/msg/Frontier.msg" NAME_WE)
add_dependencies(exploration_msgs_generate_messages_nodejs _exploration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/catkin_ws/src/multiple_robots_slam/exploration_msgs/msg/RobotInfo.msg" NAME_WE)
add_dependencies(exploration_msgs_generate_messages_nodejs _exploration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/catkin_ws/src/multiple_robots_slam/exploration_msgs/msg/RobotInfoArray.msg" NAME_WE)
add_dependencies(exploration_msgs_generate_messages_nodejs _exploration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/catkin_ws/src/multiple_robots_slam/exploration_msgs/msg/BranchArray.msg" NAME_WE)
add_dependencies(exploration_msgs_generate_messages_nodejs _exploration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/catkin_ws/src/multiple_robots_slam/exploration_msgs/msg/AvoidanceStatus.msg" NAME_WE)
add_dependencies(exploration_msgs_generate_messages_nodejs _exploration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/catkin_ws/src/multiple_robots_slam/exploration_msgs/msg/Branch.msg" NAME_WE)
add_dependencies(exploration_msgs_generate_messages_nodejs _exploration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/catkin_ws/src/multiple_robots_slam/exploration_msgs/msg/FrontierArray.msg" NAME_WE)
add_dependencies(exploration_msgs_generate_messages_nodejs _exploration_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(exploration_msgs_gennodejs)
add_dependencies(exploration_msgs_gennodejs exploration_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS exploration_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(exploration_msgs
  "/home/ros/catkin_ws/src/multiple_robots_slam/exploration_msgs/msg/PointArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/exploration_msgs
)
_generate_msg_py(exploration_msgs
  "/home/ros/catkin_ws/src/multiple_robots_slam/exploration_msgs/msg/Frontier.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/exploration_msgs
)
_generate_msg_py(exploration_msgs
  "/home/ros/catkin_ws/src/multiple_robots_slam/exploration_msgs/msg/RobotInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/exploration_msgs
)
_generate_msg_py(exploration_msgs
  "/home/ros/catkin_ws/src/multiple_robots_slam/exploration_msgs/msg/RobotInfoArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/ros/catkin_ws/src/multiple_robots_slam/exploration_msgs/msg/RobotInfo.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/exploration_msgs
)
_generate_msg_py(exploration_msgs
  "/home/ros/catkin_ws/src/multiple_robots_slam/exploration_msgs/msg/BranchArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/ros/catkin_ws/src/multiple_robots_slam/exploration_msgs/msg/Branch.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/exploration_msgs
)
_generate_msg_py(exploration_msgs
  "/home/ros/catkin_ws/src/multiple_robots_slam/exploration_msgs/msg/AvoidanceStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/exploration_msgs
)
_generate_msg_py(exploration_msgs
  "/home/ros/catkin_ws/src/multiple_robots_slam/exploration_msgs/msg/Branch.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/exploration_msgs
)
_generate_msg_py(exploration_msgs
  "/home/ros/catkin_ws/src/multiple_robots_slam/exploration_msgs/msg/FrontierArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/ros/catkin_ws/src/multiple_robots_slam/exploration_msgs/msg/Frontier.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/exploration_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(exploration_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/exploration_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(exploration_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(exploration_msgs_generate_messages exploration_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ros/catkin_ws/src/multiple_robots_slam/exploration_msgs/msg/PointArray.msg" NAME_WE)
add_dependencies(exploration_msgs_generate_messages_py _exploration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/catkin_ws/src/multiple_robots_slam/exploration_msgs/msg/Frontier.msg" NAME_WE)
add_dependencies(exploration_msgs_generate_messages_py _exploration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/catkin_ws/src/multiple_robots_slam/exploration_msgs/msg/RobotInfo.msg" NAME_WE)
add_dependencies(exploration_msgs_generate_messages_py _exploration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/catkin_ws/src/multiple_robots_slam/exploration_msgs/msg/RobotInfoArray.msg" NAME_WE)
add_dependencies(exploration_msgs_generate_messages_py _exploration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/catkin_ws/src/multiple_robots_slam/exploration_msgs/msg/BranchArray.msg" NAME_WE)
add_dependencies(exploration_msgs_generate_messages_py _exploration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/catkin_ws/src/multiple_robots_slam/exploration_msgs/msg/AvoidanceStatus.msg" NAME_WE)
add_dependencies(exploration_msgs_generate_messages_py _exploration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/catkin_ws/src/multiple_robots_slam/exploration_msgs/msg/Branch.msg" NAME_WE)
add_dependencies(exploration_msgs_generate_messages_py _exploration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/catkin_ws/src/multiple_robots_slam/exploration_msgs/msg/FrontierArray.msg" NAME_WE)
add_dependencies(exploration_msgs_generate_messages_py _exploration_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(exploration_msgs_genpy)
add_dependencies(exploration_msgs_genpy exploration_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS exploration_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/exploration_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/exploration_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(exploration_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(exploration_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/exploration_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/exploration_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(exploration_msgs_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(exploration_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/exploration_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/exploration_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(exploration_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(exploration_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/exploration_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/exploration_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(exploration_msgs_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(exploration_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/exploration_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/exploration_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/exploration_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(exploration_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(exploration_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
