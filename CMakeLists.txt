cmake_minimum_required(VERSION 3.14.1)
project(TEST_CMAKE)
add_definitions(-std=c++17)

set (VERSION_MAJOR 2)
set (VERSION_MINOR 4)

configure_file (
  "config.h.in"
  "../config.h"
  )
add_executable(test_version check_version.cpp)

if(CMAKE_TOOLCHAIN_FILE)
    message("TOOLCHAIN_FILE ==> ${CMAKE_TOOLCHAIN_FILE}")
endif()

if(TEST_OPENCV)
    message("\nTest OpenCV")
    find_package(OpenCV CONFIG REQUIRED)
    message(STATUS "Library version: ${OpenCV_VERSION}")
    add_executable(test_opencv check_opencv.cpp)
    target_link_libraries(test_opencv ${OpenCV_LIBS})
endif()

if(TEST_DLIB)
    message("\nTest dlib")
    find_package(Dlib CONFIG REQUIRED)
    message(STATUS "Library version: ${dlib_VERSION}")
    add_executable(test_dlib check_dlib.cpp)
    target_link_libraries(test_dlib PRIVATE dlib::dlib)
endif()

