#
# src/prng/CMakeLists.txt
#
target_sources(${target}
    PRIVATE
        ${CMAKE_CURRENT_LIST_DIR}/drand48.c
        ${CMAKE_CURRENT_LIST_DIR}/lcong48.c
        ${CMAKE_CURRENT_LIST_DIR}/lrand48.c
        ${CMAKE_CURRENT_LIST_DIR}/mrand48.c
        ${CMAKE_CURRENT_LIST_DIR}/__rand48_step.c
        ${CMAKE_CURRENT_LIST_DIR}/rand.c
        ${CMAKE_CURRENT_LIST_DIR}/random.c
        ${CMAKE_CURRENT_LIST_DIR}/rand_r.c
        ${CMAKE_CURRENT_LIST_DIR}/__seed48.c
        ${CMAKE_CURRENT_LIST_DIR}/seed48.c
        ${CMAKE_CURRENT_LIST_DIR}/srand48.c
)
