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
#set(MUSL_CONFIG_INSTALL_DIR        "lib/cmake/${PROJECT_NAME}")
#set(MUSL_TARGETS_EXPORT_NAME       "${PROJECT_NAME}-targets")
#set(MUSL_CMAKE_CONFIG_TEMPLATE     "cmake/config.cmake.in")
#set(MUSL_CMAKE_CONFIG_DIR          "${CMAKE_CURRENT_BINARY_DIR}/cmake_config")
#set(MUSL_CMAKE_PROJECT_CONFIG_FILE "${MUSL_CMAKE_CONFIG_DIR}/${PROJECT_NAME}-config.cmake")
#set(MUSL_CMAKE_VERSION_CONFIG_FILE "${MUSL_CMAKE_CONFIG_DIR}/${PROJECT_NAME}-config-version.cmake")

set(arch x86_64)
set(src ${PROJECT_SOURCE_DIR})
set(bin ${PROJECT_BINARY_DIR})

# PIC portion of CRT
add_library(crt_pic OBJECT ${src}/crt/rcrt1.c ${src}/crt/Scrt1.c)
set_target_properties(crt_pic PROPERTIES POSITION_INDEPENDENT_CODE ON)
target_compile_definitions(crt_pic PRIVATE CRT)
target_include_directories(crt_pic PRIVATE ${src}/arch/${arch} ${src}/src/internal)

# Rest of CRT
add_library(crt OBJECT
    ${src}/crt/crt1.c
    ${src}/crt/${arch}/crti.s
    ${src}/crt/${arch}/crtn.s
)
target_compile_definitions(crt PRIVATE CRT)
target_include_directories(crt PRIVATE ${src}/arch/${arch} ${src}/src/internal)

set(target c)
add_library(${target} STATIC "")
set_target_properties(${target} PROPERTIES LINKER_LANGUAGE C)

add_custom_command(
    OUTPUT ${bin}/include/bits/alltypes.h
    COMMAND ${src}/write_alltypes.sh ${bin} ${src} ${arch}
    DEPENDS ${src}/arch/${arch}/bits/alltypes.h.in
    DEPENDS ${src}/include/alltypes.h.in
    DEPENDS ${src}/tools/mkalltypes.sed
)
add_custom_command(
    OUTPUT ${bin}/include/bits/syscall.h
    COMMAND ${src}/write_syscall.sh ${bin} ${src} ${arch}
    DEPENDS ${src}/arch/${arch}/bits/syscall.h.in
)
add_custom_command(
    OUTPUT ${bin}/src/internal/version.h
    COMMAND ${src}/write_version.sh ${bin} ${src}
    DEPENDS ${src}/VERSION
)

target_sources(${target} PRIVATE
    ${bin}/include/bits/alltypes.h
    ${bin}/include/bits/syscall.h
    ${bin}/src/internal/version.h
)
target_compile_options(${target} PRIVATE
    -std=c99 -nostdinc -ffreestanding
    -Wa,--noexecstack -Os -pipe -fomit-frame-pointer
    -fno-unwind-tables -fno-asynchronous-unwind-tables
    -ffunction-sections -fdata-sections
    -Werror=implicit-function-declaration -Werror=implicit-int
    -Werror=pointer-sign -Werror=pointer-arith
    -Wno-logical-op-parentheses -Wno-bitwise-op-parentheses
    -Wno-shift-op-parentheses -Wno-ignored-attributes -Wno-dangling-else
    -Wno-parentheses -Wno-string-plus-int -Wno-unknown-pragmas
)
target_compile_definitions(${target} PRIVATE _XOPEN_SOURCE=700)
target_include_directories(${target} PRIVATE
   ${src}/arch/${arch}
   ${src}/arch/generic
   ${bin}/src/internal
   ${src}/src/internal
   ${bin}/include
   ${src}/include
   ${bin}/include/bits
   ${bin}/src
)

include(src/aio/CMakeLists.txt)
#include(src/complex/CMakeLists.txt)
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

####
#### INSTALL
#### install header files, generate and install cmake config files for find_package()
####
###include(CMakePackageConfigHelpers)
###write_basic_package_version_file(
###    ${MUSL_CMAKE_VERSION_CONFIG_FILE} COMPATIBILITY SameMajorVersion
###)
###configure_package_config_file(
###    ${MUSL_CMAKE_CONFIG_TEMPLATE}
###    ${MUSL_CMAKE_PROJECT_CONFIG_FILE}
###    INSTALL_DESTINATION ${MUSL_CONFIG_INSTALL_DIR}
###)
###
###install(
###    DIRECTORY ${MUSL_INCLUDE_BUILD_DIR}
###    DESTINATION ${MUSL_INCLUDE_INSTALL_DIR}
###)
###install(
###    FILES ${MUSL_CMAKE_PROJECT_CONFIG_FILE} ${MUSL_CMAKE_VERSION_CONFIG_FILE}
###    DESTINATION ${MUSL_CONFIG_INSTALL_DIR}
###)
###if (NLOHMANN_ADD_NATVIS)
###    install(
###        FILES ${NLOHMANN_NATVIS_FILE}
###        DESTINATION .
###)
###endif()
###install(
###    TARGETS ${target}
###    EXPORT ${MUSL_TARGETS_EXPORT_NAME}
###    INCLUDES DESTINATION ${MUSL_INCLUDE_INSTALL_DIR}
###)
###install(
###    EXPORT ${MUSL_TARGETS_EXPORT_NAME}
###    DESTINATION ${MUSL_CONFIG_INSTALL_DIR}
###)
