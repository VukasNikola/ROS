cmake_minimum_required(VERSION 3.0.2)
project(action_exercise)

## Use C++11 standard
add_compile_options(-std=c++11)

## Find catkin packages
find_package(catkin REQUIRED COMPONENTS
  actionlib
  actionlib_msgs
  roscpp
  std_msgs
  message_generation
)

## Declare the action file
add_action_files(
  DIRECTORY action
  FILES Charging.action
)

## Generate the message headers for actions
generate_messages(
  DEPENDENCIES
  std_msgs
  actionlib_msgs
)

## Declare the catkin package
catkin_package(
  CATKIN_DEPENDS actionlib actionlib_msgs roscpp std_msgs message_runtime
)

## Include header locations
include_directories(
  ${catkin_INCLUDE_DIRS}
)

## Declare and build the charging_server
add_executable(charging_server src/charging_server.cpp)
add_dependencies(charging_server ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})
target_link_libraries(charging_server ${catkin_LIBRARIES})

## Declare and build the charging_client
add_executable(charging_client src/charging_client.cpp)
add_dependencies(charging_client ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})
target_link_libraries(charging_client ${catkin_LIBRARIES})
