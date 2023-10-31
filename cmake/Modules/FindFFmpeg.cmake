# FindFFmpeg.cmake

find_package(PkgConfig)

pkg_check_modules(PC_FFMPEG QUIET ffmpeg)

find_path(FFMPEG_INCLUDE_DIR
    NAMES libavcodec/avcodec.h
    PATHS ${PC_FFMPEG_INCLUDE_DIRS}
)

find_library(FFMPEG_LIBAVCODEC
    NAMES avcodec
    PATHS ${PC_FFMPEG_LIBRARY_DIRS}
)

find_library(FFMPEG_LIBAVFORMAT
    NAMES avformat
    PATHS ${PC_FFMPEG_LIBRARY_DIRS}
)

find_library(FFMPEG_LIBAVUTIL
    NAMES avutil
    PATHS ${PC_FFMPEG_LIBRARY_DIRS}
)

set(FFMPEG_LIBRARIES
    ${FFMPEG_LIBAVCODEC}
    ${FFMPEG_LIBAVFORMAT}
    ${FFMPEG_LIBAVUTIL}
)

set(FFMPEG_INCLUDE_DIRS
    ${FFMPEG_INCLUDE_DIR}
)

include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(FFmpeg DEFAULT_MSG FFMPEG_LIBRARIES FFMPEG_INCLUDE_DIRS)