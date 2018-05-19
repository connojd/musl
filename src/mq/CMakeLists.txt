#
# src/mq/CMakeLists.txt
#
target_sources(${target}
    PRIVATE
        ${CMAKE_CURRENT_LIST_DIR}/mq_close.c
        ${CMAKE_CURRENT_LIST_DIR}/mq_getattr.c
        ${CMAKE_CURRENT_LIST_DIR}/mq_notify.c
        ${CMAKE_CURRENT_LIST_DIR}/mq_open.c
        ${CMAKE_CURRENT_LIST_DIR}/mq_receive.c
        ${CMAKE_CURRENT_LIST_DIR}/mq_send.c
        ${CMAKE_CURRENT_LIST_DIR}/mq_setattr.c
        ${CMAKE_CURRENT_LIST_DIR}/mq_timedreceive.c
        ${CMAKE_CURRENT_LIST_DIR}/mq_timedsend.c
        ${CMAKE_CURRENT_LIST_DIR}/mq_unlink.c
)
