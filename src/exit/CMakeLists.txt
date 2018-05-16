#
# ${CMAKE_CURRENT_LIST_DIR}/CMakeLists.txt
#
target_sources(${target}
    PRIVATE
        ${CMAKE_CURRENT_LIST_DIR}/abort.c
        ${CMAKE_CURRENT_LIST_DIR}/assert.c
        ${CMAKE_CURRENT_LIST_DIR}/atexit.c
        ${CMAKE_CURRENT_LIST_DIR}/at_quick_exit.c
        ${CMAKE_CURRENT_LIST_DIR}/exit.c
        ${CMAKE_CURRENT_LIST_DIR}/_Exit.c
        ${CMAKE_CURRENT_LIST_DIR}/quick_exit.c
)
