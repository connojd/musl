#
# src/regex/CMakeLists.txt
#
target_sources(${target}
    PRIVATE
        ${CMAKE_CURRENT_LIST_DIR}/fnmatch.c
        ${CMAKE_CURRENT_LIST_DIR}/glob.c
        ${CMAKE_CURRENT_LIST_DIR}/regcomp.c
        ${CMAKE_CURRENT_LIST_DIR}/regerror.c
        ${CMAKE_CURRENT_LIST_DIR}/regexec.c
        ${CMAKE_CURRENT_LIST_DIR}/tre.h
        ${CMAKE_CURRENT_LIST_DIR}/tre-mem.c
)
