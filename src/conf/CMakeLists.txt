#
# src/conf/CMakeLists.txt
#
target_sources(${target}
    PRIVATE
        ${CMAKE_CURRENT_LIST_DIR}/confstr.c
        ${CMAKE_CURRENT_LIST_DIR}/fpathconf.c
        ${CMAKE_CURRENT_LIST_DIR}/legacy.c
        ${CMAKE_CURRENT_LIST_DIR}/pathconf.c
        ${CMAKE_CURRENT_LIST_DIR}/sysconf.c
)
