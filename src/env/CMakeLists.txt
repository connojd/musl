#
# src/env/CMakeLists.txt
#
target_sources(${target}
    PRIVATE
        ${CMAKE_CURRENT_LIST_DIR}/clearenv.c
        ${CMAKE_CURRENT_LIST_DIR}/__environ.c
        ${CMAKE_CURRENT_LIST_DIR}/getenv.c
        ${CMAKE_CURRENT_LIST_DIR}/__init_tls.c
        ${CMAKE_CURRENT_LIST_DIR}/__libc_start_main.c
        ${CMAKE_CURRENT_LIST_DIR}/putenv.c
        ${CMAKE_CURRENT_LIST_DIR}/__reset_tls.c
        ${CMAKE_CURRENT_LIST_DIR}/setenv.c
        ${CMAKE_CURRENT_LIST_DIR}/__stack_chk_fail.c
        ${CMAKE_CURRENT_LIST_DIR}/unsetenv.c
)
