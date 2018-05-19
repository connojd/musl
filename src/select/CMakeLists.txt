#
# src/select/CMakeLists.txt
#
target_sources(${target}
    PRIVATE
        ${CMAKE_CURRENT_LIST_DIR}/poll.c
        ${CMAKE_CURRENT_LIST_DIR}/pselect.c
        ${CMAKE_CURRENT_LIST_DIR}/select.c
)
