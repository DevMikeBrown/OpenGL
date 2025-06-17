cmake_minimum_required(VERSION 3.10)
project(UsingOpenGLInVSCODE)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED true)

include_directories("../Include")
link_directories("../Libraries")

add_executable(${PROJECT_NAME} ../Source/Main.cpp ../Dependencies/Libraries/glad.c)


add_library(glad ../Libraries/glad.c)
target_include_directories(${PROJECT_NAME} PRIVATE ../Include)
target_link_libraries(${PROJECT_NAME} glfw3 opengl32 kernel32 gdi32 user32)
