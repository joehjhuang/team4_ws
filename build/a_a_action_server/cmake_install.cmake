# Install script for directory: /home/joehuang/Documents/MIT/2.12/team4_ws/src/a_a_action_server

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/joehuang/Documents/MIT/2.12/team4_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
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

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/a_a_action_server/action" TYPE FILE FILES "/home/joehuang/Documents/MIT/2.12/team4_ws/src/a_a_action_server/action/a_a.action")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/a_a_action_server/msg" TYPE FILE FILES
    "/home/joehuang/Documents/MIT/2.12/team4_ws/devel/share/a_a_action_server/msg/a_aAction.msg"
    "/home/joehuang/Documents/MIT/2.12/team4_ws/devel/share/a_a_action_server/msg/a_aActionGoal.msg"
    "/home/joehuang/Documents/MIT/2.12/team4_ws/devel/share/a_a_action_server/msg/a_aActionResult.msg"
    "/home/joehuang/Documents/MIT/2.12/team4_ws/devel/share/a_a_action_server/msg/a_aActionFeedback.msg"
    "/home/joehuang/Documents/MIT/2.12/team4_ws/devel/share/a_a_action_server/msg/a_aGoal.msg"
    "/home/joehuang/Documents/MIT/2.12/team4_ws/devel/share/a_a_action_server/msg/a_aResult.msg"
    "/home/joehuang/Documents/MIT/2.12/team4_ws/devel/share/a_a_action_server/msg/a_aFeedback.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/a_a_action_server/cmake" TYPE FILE FILES "/home/joehuang/Documents/MIT/2.12/team4_ws/build/a_a_action_server/catkin_generated/installspace/a_a_action_server-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/joehuang/Documents/MIT/2.12/team4_ws/devel/include/a_a_action_server")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/joehuang/Documents/MIT/2.12/team4_ws/devel/share/roseus/ros/a_a_action_server")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/joehuang/Documents/MIT/2.12/team4_ws/devel/share/common-lisp/ros/a_a_action_server")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/joehuang/Documents/MIT/2.12/team4_ws/devel/share/gennodejs/ros/a_a_action_server")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/joehuang/Documents/MIT/2.12/team4_ws/devel/lib/python2.7/dist-packages/a_a_action_server")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/joehuang/Documents/MIT/2.12/team4_ws/devel/lib/python2.7/dist-packages/a_a_action_server")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/joehuang/Documents/MIT/2.12/team4_ws/build/a_a_action_server/catkin_generated/installspace/a_a_action_server.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/a_a_action_server/cmake" TYPE FILE FILES "/home/joehuang/Documents/MIT/2.12/team4_ws/build/a_a_action_server/catkin_generated/installspace/a_a_action_server-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/a_a_action_server/cmake" TYPE FILE FILES
    "/home/joehuang/Documents/MIT/2.12/team4_ws/build/a_a_action_server/catkin_generated/installspace/a_a_action_serverConfig.cmake"
    "/home/joehuang/Documents/MIT/2.12/team4_ws/build/a_a_action_server/catkin_generated/installspace/a_a_action_serverConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/a_a_action_server" TYPE FILE FILES "/home/joehuang/Documents/MIT/2.12/team4_ws/src/a_a_action_server/package.xml")
endif()

