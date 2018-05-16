#
# ${CMAKE_CURRENT_LIST_DIR}/CMakeLists.txt
#
target_sources(${target}
    PRIVATE
        ${CMAKE_CURRENT_LIST_DIR}/longjmp.c
        ${CMAKE_CURRENT_LIST_DIR}/setjmp.c
)
