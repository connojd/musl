#
# src/ldso/CMakeLists.txt
#
target_sources(${target}
    PRIVATE
        ${CMAKE_CURRENT_LIST_DIR}/dladdr.c
        ${CMAKE_CURRENT_LIST_DIR}/dlclose.c
        ${CMAKE_CURRENT_LIST_DIR}/dlerror.c
        ${CMAKE_CURRENT_LIST_DIR}/dlinfo.c
        ${CMAKE_CURRENT_LIST_DIR}/dl_iterate_phdr.c
        ${CMAKE_CURRENT_LIST_DIR}/dlopen.c
        ${CMAKE_CURRENT_LIST_DIR}/__dlsym.c
        ${CMAKE_CURRENT_LIST_DIR}/dlsym.c
        ${CMAKE_CURRENT_LIST_DIR}/tlsdesc.c
)
