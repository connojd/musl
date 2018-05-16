#
# ${CMAKE_CURRENT_LIST_DIR}/CMakeLists.txt
#
target_sources(${target}
    PRIVATE
        ${CMAKE_CURRENT_LIST_DIR}/hsearch.c
        ${CMAKE_CURRENT_LIST_DIR}/insque.c
        ${CMAKE_CURRENT_LIST_DIR}/lsearch.c
        ${CMAKE_CURRENT_LIST_DIR}/tdestroy.c
        ${CMAKE_CURRENT_LIST_DIR}/tsearch_avl.c
)
