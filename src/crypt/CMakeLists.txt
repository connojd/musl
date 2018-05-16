#
# ${CMAKE_CURRENT_LIST_DIR}/CMakeLists.txt
#
target_sources(${target}
    PRIVATE
        ${CMAKE_CURRENT_LIST_DIR}/crypt_blowfish.c
        ${CMAKE_CURRENT_LIST_DIR}/crypt.c
        ${CMAKE_CURRENT_LIST_DIR}/crypt_des.c
        ${CMAKE_CURRENT_LIST_DIR}/crypt_md5.c
        ${CMAKE_CURRENT_LIST_DIR}/crypt_r.c
        ${CMAKE_CURRENT_LIST_DIR}/crypt_sha256.c
        ${CMAKE_CURRENT_LIST_DIR}/crypt_sha512.c
        ${CMAKE_CURRENT_LIST_DIR}/encrypt.c
)
