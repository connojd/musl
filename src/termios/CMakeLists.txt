#
# ${CMAKE_CURRENT_LIST_DIR}/CMakeLists.txt
#
target_sources(${target}
    PRIVATE
        ${CMAKE_CURRENT_LIST_DIR}/cfgetospeed.c
        ${CMAKE_CURRENT_LIST_DIR}/cfmakeraw.c
        ${CMAKE_CURRENT_LIST_DIR}/cfsetospeed.c
        ${CMAKE_CURRENT_LIST_DIR}/tcdrain.c
        ${CMAKE_CURRENT_LIST_DIR}/tcflow.c
        ${CMAKE_CURRENT_LIST_DIR}/tcflush.c
        ${CMAKE_CURRENT_LIST_DIR}/tcgetattr.c
        ${CMAKE_CURRENT_LIST_DIR}/tcgetsid.c
        ${CMAKE_CURRENT_LIST_DIR}/tcsendbreak.c
        ${CMAKE_CURRENT_LIST_DIR}/tcsetattr.c
)
