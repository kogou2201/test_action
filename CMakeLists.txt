cmake_minimum_required(VERSION 3.10)

set(TEST_TARGET test)
project(${TEST_TARGET})

set(TEST_VERSION 1.0.0)
set(CMAKE_CXX_STANDARD 17)

set(CMAKE_CONFIGURATION_TYPES Debug)
set(CMAKE_BUILD_TYPE Debug)
set(CMAKE_CXX_FLAGS_DEBUG  "-g")

aux_source_directory(. TEST_SRCS)

add_executable(${TEST_TARGET} ${TEST_SRCS})