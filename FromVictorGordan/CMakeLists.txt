cmake_minimum_required(VERSION 3.10)
project(LaunchVictorGordan)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED true)

include_directories("C:/Users/uyand/scoop/apps/GLFW/3.4/include"
"./Src/Glad/include")
link_directories("C:/Users/uyand/scoop/apps/GLFW/3.4/lib-mingw-w64"
"./Src/Glad/src")

add_executable(${PROJECT_NAME} Src/Main.cpp Src/Glad/src/glad.c)

add_library(glad ./Src/Glad/src/glad.c)
target_include_directories(${PROJECT_NAME} PRIVATE ./Src/Glad/include)

target_link_libraries(${PROJECT_NAME} glfw3 opengl32 kernel32 gdi32 user32)
