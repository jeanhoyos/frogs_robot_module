cmake_minimum_required(VERSION 2.8.3)
project(module_robot_arm)

find_package(catkin REQUIRED COMPONENTS
  rospy
  frogs_msgs
)

catkin_python_setup()

catkin_package(
 CATKIN_DEPENDS rospy frogs_msgs
)



## Generate added messages and services with any dependencies listed here
# generate_messages(
#   DEPENDENCIES
#   std_msgs  # Or other packages containing msgs
# )

catkin_package(
#  INCLUDE_DIRS include
#  LIBRARIES frogs_monitoring
   CATKIN_DEPENDS  rospy frogs_msgs
#  DEPENDS system_lib
)

###########
## Build ##
###########



include_directories(
  ${catkin_INCLUDE_DIRS}
)

catkin_install_python(PROGRAMS
  src/module_robot_arm/robot_arm_action_server
  DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
)
