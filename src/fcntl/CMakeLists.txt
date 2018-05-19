#
# src/fcntl/CMakeLists.txt
#
target_sources(${target}
    PRIVATE
        ${CMAKE_CURRENT_LIST_DIR}/creat.c
        ${CMAKE_CURRENT_LIST_DIR}/fcntl.c
        ${CMAKE_CURRENT_LIST_DIR}/openat.c
        ${CMAKE_CURRENT_LIST_DIR}/open.c
        ${CMAKE_CURRENT_LIST_DIR}/posix_fadvise.c
        ${CMAKE_CURRENT_LIST_DIR}/posix_fallocate.c
)
