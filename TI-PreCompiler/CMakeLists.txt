cmake_minimum_required(VERSION 3.0.0)
project(TI-PreCompiler VERSION 0.1.0)
enable_testing()

add_executable(TI-PreCompiler.exec src/main.cpp)
target_link_libraries (TI-PreCompiler.exec -lstdc++fs)
set(CPACK_PROJECT_NAME ${PROJECT_NAME})
set(CPACK_PROJECT_VERSION ${PROJECT_VERSION})
include(CPack)
