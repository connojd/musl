cmake_minimum_required(VERSION 3.11.0)

##
## PROJECT
## name and version
##
project(musl VERSION 1.1.19 LANGUAGES C)

#option(JSON_BuildTests "Build the unit tests when BUILD_TESTING is enabled." ON)
#option(JSON_MultipleHeaders "Use non-amalgamated version of the library." OFF)

##
## CONFIGURATION
##
set(target ${PROJECT_NAME})
set(MUSL_INCLUDE_INSTALL_DIR "include")

#set(MUSL_CONFIG_INSTALL_DIR        "lib/cmake/${PROJECT_NAME}")
#set(MUSL_TARGETS_EXPORT_NAME       "${PROJECT_NAME}-targets")
#set(MUSL_CMAKE_CONFIG_TEMPLATE     "cmake/config.cmake.in")
#set(MUSL_CMAKE_CONFIG_DIR          "${CMAKE_CURRENT_BINARY_DIR}/cmake_config")
#set(MUSL_CMAKE_PROJECT_CONFIG_FILE "${MUSL_CMAKE_CONFIG_DIR}/${PROJECT_NAME}-config.cmake")
#set(MUSL_CMAKE_VERSION_CONFIG_FILE "${MUSL_CMAKE_CONFIG_DIR}/${PROJECT_NAME}-config-version.cmake")

##
## TARGET
## create target and add include path
##
add_library(${target} STATIC "")

target_include_directories(${target}
    PRIVATE #order matters?
       ${PROJECT_SOURCE_DIR}/arch/x86_64
       ${PROJECT_SOURCE_DIR}/arch/generic
       ${PROJECT_SOURCE_DIR}/obj/src/internal
       ${PROJECT_SOURCE_DIR}/src/internal
       ${PROJECT_SOURCE_DIR}/obj/include
       ${PROJECT_SOURCE_DIR}/include
       #TODO    INTERFACE
       #TODO
       #TODO    INTERFACE
       #TODO        $<BUILD_INTERFACE:${PROJECT_SOURCE_DIR}/arch/x86_64>
       #TODO        $<BUILD_INTERFACE:${PROJECT_SOURCE_DIR}/include>
       #TODO        $<INSTALL_INTERFACE:include>
)

target_compile_options(${target}
    PRIVATE -std=c99 -ffreestanding -nostinc -Os -pipe
)

include(src/aio/CMakeLists.txt)
include(src/complex/CMakeLists.txt)
include(src/conf/CMakeLists.txt)
include(src/crypt/CMakeLists.txt)
include(src/ctype/CMakeLists.txt)
include(src/dirent/CMakeLists.txt)
include(src/env/CMakeLists.txt)
include(src/errno/CMakeLists.txt)
include(src/exit/CMakeLists.txt)
include(src/fcntl/CMakeLists.txt)
include(src/fenv/CMakeLists.txt)
include(src/internal/CMakeLists.txt)
include(src/ipc/CMakeLists.txt)
include(src/ldso/CMakeLists.txt)
include(src/legacy/CMakeLists.txt)
include(src/linux/CMakeLists.txt)
include(src/locale/CMakeLists.txt)
include(src/malloc/CMakeLists.txt)
include(src/math/CMakeLists.txt)
include(src/misc/CMakeLists.txt)
include(src/mman/CMakeLists.txt)
include(src/mq/CMakeLists.txt)
include(src/multibyte/CMakeLists.txt)
include(src/network/CMakeLists.txt)
include(src/passwd/CMakeLists.txt)
include(src/prng/CMakeLists.txt)
include(src/process/CMakeLists.txt)
include(src/regex/CMakeLists.txt)
include(src/sched/CMakeLists.txt)
include(src/search/CMakeLists.txt)
include(src/select/CMakeLists.txt)
include(src/setjmp/CMakeLists.txt)
include(src/signal/CMakeLists.txt)
include(src/stat/CMakeLists.txt)
include(src/stdio/CMakeLists.txt)
include(src/stdlib/CMakeLists.txt)
include(src/string/CMakeLists.txt)
include(src/temp/CMakeLists.txt)
include(src/termios/CMakeLists.txt)
include(src/thread/CMakeLists.txt)
include(src/time/CMakeLists.txt)
include(src/unistd/CMakeLists.txt)

#dlso
#crt
#ARCH SRC DIRS
#./crt/x86_64
#./arch/x86_64
#./src/ldso/x86_64
#./src/signal/x86_64
#./src/setjmp/x86_64
#./src/math/x86_64
#./src/process/x86_64
#./src/internal/x86_64
#./src/string/x86_64
#./src/thread/x86_64
#./src/fenv/x86_64

##
## INSTALL
## install header files, generate and install cmake config files for find_package()
##
#include(CMakePackageConfigHelpers)
#write_basic_package_version_file(
#    ${MUSL_CMAKE_VERSION_CONFIG_FILE} COMPATIBILITY SameMajorVersion
#)
#configure_package_config_file(
#    ${MUSL_CMAKE_CONFIG_TEMPLATE}
#    ${MUSL_CMAKE_PROJECT_CONFIG_FILE}
#    INSTALL_DESTINATION ${MUSL_CONFIG_INSTALL_DIR}
#)
#
#install(
#    DIRECTORY ${MUSL_INCLUDE_BUILD_DIR}
#    DESTINATION ${MUSL_INCLUDE_INSTALL_DIR}
#)
#install(
#    FILES ${MUSL_CMAKE_PROJECT_CONFIG_FILE} ${MUSL_CMAKE_VERSION_CONFIG_FILE}
#    DESTINATION ${MUSL_CONFIG_INSTALL_DIR}
#)
#if (NLOHMANN_ADD_NATVIS)
#    install(
#        FILES ${NLOHMANN_NATVIS_FILE}
#        DESTINATION .
#)
#endif()
#install(
#    TARGETS ${target}
#    EXPORT ${MUSL_TARGETS_EXPORT_NAME}
#    INCLUDES DESTINATION ${MUSL_INCLUDE_INSTALL_DIR}
#)
#install(
#    EXPORT ${MUSL_TARGETS_EXPORT_NAME}
#    DESTINATION ${MUSL_CONFIG_INSTALL_DIR}
#)
