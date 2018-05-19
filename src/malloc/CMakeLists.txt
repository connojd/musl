#
# src/malloc/CMakeLists.txt
#
target_sources(${target}
    PRIVATE
        ${CMAKE_CURRENT_LIST_DIR}/aligned_alloc.c
        ${CMAKE_CURRENT_LIST_DIR}/expand_heap.c
        ${CMAKE_CURRENT_LIST_DIR}/lite_malloc.c
        ${CMAKE_CURRENT_LIST_DIR}/malloc.c
        ${CMAKE_CURRENT_LIST_DIR}/malloc_usable_size.c
        ${CMAKE_CURRENT_LIST_DIR}/memalign.c
        ${CMAKE_CURRENT_LIST_DIR}/posix_memalign.c
)
