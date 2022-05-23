set(CMAKE_INCLUDE_CURRENT_DIR ON)
include_directories(${Boost_INCLUDE_DIRS})
add_library(assertexcept STATIC assertexcept.h assertexcept.cpp)
