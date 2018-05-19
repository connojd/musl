#
# src/errno/CMakeLists.txt
#
target_sources(${target}
    PRIVATE
        ${CMAKE_CURRENT_LIST_DIR}/__errno_location.c
        ${CMAKE_CURRENT_LIST_DIR}/strerror.c
        ${CMAKE_CURRENT_LIST_DIR}/__strerror.h
)
