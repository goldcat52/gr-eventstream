INCLUDE(FindPkgConfig)
PKG_CHECK_MODULES(PC_GNURADIO_EVENSTREAM eventstream)

FIND_PATH(
    GNURADIO_EVENTSTREAM_INCLUDE_DIRS
    NAMES es/es.h
    HINTS $ENV{GNURADIO_EVENTSTREAM_DIR}/include
        ${PC_GNURADIO_EVENTSTREAM_INCLUDEDIR}
        ${CMAKE_INSTALL_PREFIX}/include/
    PATHS /usr/local/include/
          /usr/include/
)

FIND_LIBRARY(
    GNURADIO_EVENTSTREAM_LIBRARIES
    NAMES eventstream
    HINTS $ENV{GNURADIO_RUNTIME_DIR}/lib
        ${PC_GNURADIO_RUNTIME_LIBDIR}
        ${CMAKE_INSTALL_PREFIX}/lib64
        ${CMAKE_INSTALL_PREFIX}/lib
    PATHS /usr/local/lib
          /usr/local/lib64
          /usr/lib
          /usr/lib64
)

INCLUDE(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(GNURADIO_EVENTSTREAM DEFAULT_MSG GNURADIO_EVENTSTREAM_LIBRARIES GNURADIO_EVENTSTREAM_INCLUDE_DIRS)
MARK_AS_ADVANCED(GNURADIO_EVENTSTREAM_LIBRARIES GNURADIO_EVENTSTREAM_INCLUDE_DIRS)
