#
# src/aio/CMakeLists.txt
#
target_sources(${target}
    PRIVATE
        ${CMAKE_CURRENT_LIST_DIR}/aio.c
        ${CMAKE_CURRENT_LIST_DIR}/aio_suspend.c
        ${CMAKE_CURRENT_LIST_DIR}/lio_listio.c
)
