#
# src/string/CMakeLists.txt
#
target_sources(${target}
    PRIVATE
        ${CMAKE_CURRENT_LIST_DIR}/bcmp.c
        ${CMAKE_CURRENT_LIST_DIR}/bcopy.c
        ${CMAKE_CURRENT_LIST_DIR}/bzero.c
        ${CMAKE_CURRENT_LIST_DIR}/index.c
        ${CMAKE_CURRENT_LIST_DIR}/memccpy.c
        ${CMAKE_CURRENT_LIST_DIR}/memchr.c
        ${CMAKE_CURRENT_LIST_DIR}/memcmp.c
        ${CMAKE_CURRENT_LIST_DIR}/memcpy.c
        ${CMAKE_CURRENT_LIST_DIR}/memmem.c
        ${CMAKE_CURRENT_LIST_DIR}/memmove.c
        ${CMAKE_CURRENT_LIST_DIR}/mempcpy.c
        ${CMAKE_CURRENT_LIST_DIR}/memrchr.c
        ${CMAKE_CURRENT_LIST_DIR}/memset.c
        ${CMAKE_CURRENT_LIST_DIR}/rindex.c
        ${CMAKE_CURRENT_LIST_DIR}/stpcpy.c
        ${CMAKE_CURRENT_LIST_DIR}/stpncpy.c
        ${CMAKE_CURRENT_LIST_DIR}/strcasecmp.c
        ${CMAKE_CURRENT_LIST_DIR}/strcasestr.c
        ${CMAKE_CURRENT_LIST_DIR}/strcat.c
        ${CMAKE_CURRENT_LIST_DIR}/strchr.c
        ${CMAKE_CURRENT_LIST_DIR}/strchrnul.c
        ${CMAKE_CURRENT_LIST_DIR}/strcmp.c
        ${CMAKE_CURRENT_LIST_DIR}/strcpy.c
        ${CMAKE_CURRENT_LIST_DIR}/strcspn.c
        ${CMAKE_CURRENT_LIST_DIR}/strdup.c
        ${CMAKE_CURRENT_LIST_DIR}/strerror_r.c
        ${CMAKE_CURRENT_LIST_DIR}/strlcat.c
        ${CMAKE_CURRENT_LIST_DIR}/strlcpy.c
        ${CMAKE_CURRENT_LIST_DIR}/strlen.c
        ${CMAKE_CURRENT_LIST_DIR}/strncasecmp.c
        ${CMAKE_CURRENT_LIST_DIR}/strncat.c
        ${CMAKE_CURRENT_LIST_DIR}/strncmp.c
        ${CMAKE_CURRENT_LIST_DIR}/strncpy.c
        ${CMAKE_CURRENT_LIST_DIR}/strndup.c
        ${CMAKE_CURRENT_LIST_DIR}/strnlen.c
        ${CMAKE_CURRENT_LIST_DIR}/strpbrk.c
        ${CMAKE_CURRENT_LIST_DIR}/strrchr.c
        ${CMAKE_CURRENT_LIST_DIR}/strsep.c
        ${CMAKE_CURRENT_LIST_DIR}/strsignal.c
        ${CMAKE_CURRENT_LIST_DIR}/strspn.c
        ${CMAKE_CURRENT_LIST_DIR}/strstr.c
        ${CMAKE_CURRENT_LIST_DIR}/strtok.c
        ${CMAKE_CURRENT_LIST_DIR}/strtok_r.c
        ${CMAKE_CURRENT_LIST_DIR}/strverscmp.c
        ${CMAKE_CURRENT_LIST_DIR}/swab.c

        ${CMAKE_CURRENT_LIST_DIR}/wcpcpy.c
        ${CMAKE_CURRENT_LIST_DIR}/wcpncpy.c
        ${CMAKE_CURRENT_LIST_DIR}/wcscasecmp.c
        ${CMAKE_CURRENT_LIST_DIR}/wcscasecmp_l.c
        ${CMAKE_CURRENT_LIST_DIR}/wcscat.c
        ${CMAKE_CURRENT_LIST_DIR}/wcschr.c
        ${CMAKE_CURRENT_LIST_DIR}/wcscmp.c
        ${CMAKE_CURRENT_LIST_DIR}/wcscpy.c
        ${CMAKE_CURRENT_LIST_DIR}/wcscspn.c
        ${CMAKE_CURRENT_LIST_DIR}/wcsdup.c
        ${CMAKE_CURRENT_LIST_DIR}/wcslen.c
        ${CMAKE_CURRENT_LIST_DIR}/wcsncasecmp.c
        ${CMAKE_CURRENT_LIST_DIR}/wcsncasecmp_l.c
        ${CMAKE_CURRENT_LIST_DIR}/wcsncat.c
        ${CMAKE_CURRENT_LIST_DIR}/wcsncmp.c
        ${CMAKE_CURRENT_LIST_DIR}/wcsncpy.c
        ${CMAKE_CURRENT_LIST_DIR}/wcsnlen.c
        ${CMAKE_CURRENT_LIST_DIR}/wcspbrk.c
        ${CMAKE_CURRENT_LIST_DIR}/wcsrchr.c
        ${CMAKE_CURRENT_LIST_DIR}/wcsspn.c
        ${CMAKE_CURRENT_LIST_DIR}/wcsstr.c
        ${CMAKE_CURRENT_LIST_DIR}/wcstok.c
        ${CMAKE_CURRENT_LIST_DIR}/wcswcs.c
        ${CMAKE_CURRENT_LIST_DIR}/wmemchr.c
        ${CMAKE_CURRENT_LIST_DIR}/wmemcmp.c
        ${CMAKE_CURRENT_LIST_DIR}/wmemcpy.c
        ${CMAKE_CURRENT_LIST_DIR}/wmemmove.c
        ${CMAKE_CURRENT_LIST_DIR}/wmemset.c
)
