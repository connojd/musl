#
# ${CMAKE_CURRENT_LIST_DIR}/CMakeLists.txt
#
target_sources(${target}
    PRIVATE
        ${CMAKE_CURRENT_LIST_DIR}/affinity.c
        ${CMAKE_CURRENT_LIST_DIR}/sched_cpucount.c
        ${CMAKE_CURRENT_LIST_DIR}/sched_getcpu.c
        ${CMAKE_CURRENT_LIST_DIR}/sched_getparam.c
        ${CMAKE_CURRENT_LIST_DIR}/sched_get_priority_max.c
        ${CMAKE_CURRENT_LIST_DIR}/sched_getscheduler.c
        ${CMAKE_CURRENT_LIST_DIR}/sched_rr_get_interval.c
        ${CMAKE_CURRENT_LIST_DIR}/sched_setparam.c
        ${CMAKE_CURRENT_LIST_DIR}/sched_setscheduler.c
        ${CMAKE_CURRENT_LIST_DIR}/sched_yield.c
)
