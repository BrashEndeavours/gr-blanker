INCLUDE(FindPkgConfig)
PKG_CHECK_MODULES(PC_BLANKER blanker)

FIND_PATH(
    BLANKER_INCLUDE_DIRS
    NAMES blanker/api.h
    HINTS $ENV{BLANKER_DIR}/include
        ${PC_BLANKER_INCLUDEDIR}
    PATHS ${CMAKE_INSTALL_PREFIX}/include
          /usr/local/include
          /usr/include
)

FIND_LIBRARY(
    BLANKER_LIBRARIES
    NAMES gnuradio-blanker
    HINTS $ENV{BLANKER_DIR}/lib
        ${PC_BLANKER_LIBDIR}
    PATHS ${CMAKE_INSTALL_PREFIX}/lib
          ${CMAKE_INSTALL_PREFIX}/lib64
          /usr/local/lib
          /usr/local/lib64
          /usr/lib
          /usr/lib64
)

INCLUDE(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(BLANKER DEFAULT_MSG BLANKER_LIBRARIES BLANKER_INCLUDE_DIRS)
MARK_AS_ADVANCED(BLANKER_LIBRARIES BLANKER_INCLUDE_DIRS)

