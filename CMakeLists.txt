cmake_minimum_required(VERSION 2.8.3)
project(filesystem_manager)

# Use C++11
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11")

include_directories(
  include
)

add_executable( filesystem_manager
  src/main.cpp
  src/sha_generator.cpp
)

target_include_directories( filesystem_manager
  PUBLIC
  ${CMAKE_CURRENT_SOURCE_DIR}
)

target_link_libraries( filesystem_manager
  #yaml-cpp
)
