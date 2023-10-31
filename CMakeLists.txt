cmake_minimum_required(VERSION 3.10)

project(ffmpegDemo VERSION 1.0)

set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} "${CMAKE_SOURCE_DIR}/cmake/Modules/")

# find FFmpeg
find_package(FFmpeg REQUIRED)

# specify the sources needed to build the executable
add_executable(ffmpegDemo hello.c)

# link FFmpeg libraries
target_link_libraries(ffmpegDemo PRIVATE ${FFMPEG_LIBRARIES})

# include FFmpeg headers
target_include_directories(ffmpegDemo PRIVATE ${FFMPEG_INCLUDE_DIRS})