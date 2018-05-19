#
# src/fenv/CMakeLists.txt
#
target_sources(${target}
    PRIVATE
        ${CMAKE_CURRENT_LIST_DIR}/fegetexceptflag.c
        ${CMAKE_CURRENT_LIST_DIR}/feholdexcept.c
        ${CMAKE_CURRENT_LIST_DIR}/fenv.c
        ${CMAKE_CURRENT_LIST_DIR}/fesetexceptflag.c
        ${CMAKE_CURRENT_LIST_DIR}/fesetround.c
        ${CMAKE_CURRENT_LIST_DIR}/feupdateenv.c
        ${CMAKE_CURRENT_LIST_DIR}/__flt_rounds.c
)
