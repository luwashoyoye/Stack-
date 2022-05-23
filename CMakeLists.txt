cmake_minimum_required(VERSION 3.5)
project(stack)

set(CMAKE_CXX_STANDARD 14)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

include(CMakeLocal.txt OPTIONAL)

if (MSVC)
    add_compile_options(/W4 /WX)
else(MSVC)
    add_compile_options(-Wall -Wextra -pedantic)
endif(MSVC)

# Suppress superfluous randlib warnings about "*.a" having no symbols on MacOSX.
if (APPLE)
    set(CMAKE_C_ARCHIVE_CREATE
        "<CMAKE_AR> Scr <TARGET> <LINK_FLAGS> <OBJECTS>")
    set(CMAKE_CXX_ARCHIVE_CREATE
        "<CMAKE_AR> Scr <TARGET> <LINK_FLAGS> <OBJECTS>")
    set(CMAKE_C_ARCHIVE_FINISH
        "<CMAKE_RANLIB> -no_warning_for_no_symbols -c <TARGET>")
    set(CMAKE_CXX_ARCHIVE_FINISH
        "<CMAKE_RANLIB> -no_warning_for_no_symbols -c <TARGET>")
endif()

enable_testing()
find_package(Qt5Test REQUIRED)
set(CMAKE_CTEST_ARGUMENTS -V)
set(CMAKE_AUTOMOC ON)

find_package(Boost REQUIRED)

set(CMAKE_INCLUDE_CURRENT_DIR ON)
include_directories(${CMAKE_SOURCE_DIR})
include_directories(${CMAKE_SOURCE_DIR}/assertexcept)
include_directories(${Boost_INCLUDE_DIRS})

add_subdirectory(assertexcept)

add_library(stack STATIC stack.h stack.cpp)
add_executable(stack_demo stack_demo.cpp)
target_link_libraries(stack_demo stack assertexcept)
add_executable(stack_test stack_test.cpp)
add_test(NAME stackTest COMMAND stack_test)
target_link_libraries(stack_test Qt5::Test stack assertexcept)
