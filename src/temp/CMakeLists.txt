#
# src/temp/CMakeLists.txt
#
target_sources(${target}
    PRIVATE
        ${CMAKE_CURRENT_LIST_DIR}/mkdtemp.c
        ${CMAKE_CURRENT_LIST_DIR}/mkostemp.c
        ${CMAKE_CURRENT_LIST_DIR}/mkostemps.c
        ${CMAKE_CURRENT_LIST_DIR}/mkstemp.c
        ${CMAKE_CURRENT_LIST_DIR}/mkstemps.c
        ${CMAKE_CURRENT_LIST_DIR}/mktemp.c
        ${CMAKE_CURRENT_LIST_DIR}/__randname.c
)
