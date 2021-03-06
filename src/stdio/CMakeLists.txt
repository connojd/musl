#
# src/stdio/CMakeLists.txt
#
target_sources(${target}
    PRIVATE
        ${CMAKE_CURRENT_LIST_DIR}/asprintf.c
        ${CMAKE_CURRENT_LIST_DIR}/clearerr.c
        ${CMAKE_CURRENT_LIST_DIR}/dprintf.c
        ${CMAKE_CURRENT_LIST_DIR}/ext2.c
        ${CMAKE_CURRENT_LIST_DIR}/ext.c
        ${CMAKE_CURRENT_LIST_DIR}/fclose.c
        ${CMAKE_CURRENT_LIST_DIR}/__fclose_ca.c
        ${CMAKE_CURRENT_LIST_DIR}/__fdopen.c
        ${CMAKE_CURRENT_LIST_DIR}/feof.c
        ${CMAKE_CURRENT_LIST_DIR}/ferror.c
        ${CMAKE_CURRENT_LIST_DIR}/fflush.c
        ${CMAKE_CURRENT_LIST_DIR}/fgetc.c
        ${CMAKE_CURRENT_LIST_DIR}/fgetln.c
        ${CMAKE_CURRENT_LIST_DIR}/fgetpos.c
        ${CMAKE_CURRENT_LIST_DIR}/fgets.c
        ${CMAKE_CURRENT_LIST_DIR}/fgetwc.c
        ${CMAKE_CURRENT_LIST_DIR}/fgetws.c
        ${CMAKE_CURRENT_LIST_DIR}/fileno.c
        ${CMAKE_CURRENT_LIST_DIR}/flockfile.c
        ${CMAKE_CURRENT_LIST_DIR}/fmemopen.c
        ${CMAKE_CURRENT_LIST_DIR}/__fmodeflags.c
        ${CMAKE_CURRENT_LIST_DIR}/fopen.c
        ${CMAKE_CURRENT_LIST_DIR}/fopencookie.c
        ${CMAKE_CURRENT_LIST_DIR}/__fopen_rb_ca.c
        ${CMAKE_CURRENT_LIST_DIR}/fprintf.c
        ${CMAKE_CURRENT_LIST_DIR}/fputc.c
        ${CMAKE_CURRENT_LIST_DIR}/fputs.c
        ${CMAKE_CURRENT_LIST_DIR}/fputwc.c
        ${CMAKE_CURRENT_LIST_DIR}/fputws.c
        ${CMAKE_CURRENT_LIST_DIR}/fread.c
        ${CMAKE_CURRENT_LIST_DIR}/freopen.c
        ${CMAKE_CURRENT_LIST_DIR}/fscanf.c
        ${CMAKE_CURRENT_LIST_DIR}/fseek.c
        ${CMAKE_CURRENT_LIST_DIR}/fsetpos.c
        ${CMAKE_CURRENT_LIST_DIR}/ftell.c
        ${CMAKE_CURRENT_LIST_DIR}/ftrylockfile.c
        ${CMAKE_CURRENT_LIST_DIR}/funlockfile.c
        ${CMAKE_CURRENT_LIST_DIR}/fwide.c
        ${CMAKE_CURRENT_LIST_DIR}/fwprintf.c
        ${CMAKE_CURRENT_LIST_DIR}/fwrite.c
        ${CMAKE_CURRENT_LIST_DIR}/fwscanf.c
        ${CMAKE_CURRENT_LIST_DIR}/getc.c
        ${CMAKE_CURRENT_LIST_DIR}/getchar.c
        ${CMAKE_CURRENT_LIST_DIR}/getchar_unlocked.c
        ${CMAKE_CURRENT_LIST_DIR}/getc_unlocked.c
        ${CMAKE_CURRENT_LIST_DIR}/getdelim.c
        ${CMAKE_CURRENT_LIST_DIR}/getline.c
        ${CMAKE_CURRENT_LIST_DIR}/gets.c
        ${CMAKE_CURRENT_LIST_DIR}/getw.c
        ${CMAKE_CURRENT_LIST_DIR}/getwc.c
        ${CMAKE_CURRENT_LIST_DIR}/getwchar.c
        ${CMAKE_CURRENT_LIST_DIR}/__lockfile.c
        ${CMAKE_CURRENT_LIST_DIR}/ofl_add.c
        ${CMAKE_CURRENT_LIST_DIR}/ofl.c
        ${CMAKE_CURRENT_LIST_DIR}/open_memstream.c
        ${CMAKE_CURRENT_LIST_DIR}/open_wmemstream.c
        ${CMAKE_CURRENT_LIST_DIR}/__overflow.c
        ${CMAKE_CURRENT_LIST_DIR}/pclose.c
        ${CMAKE_CURRENT_LIST_DIR}/perror.c
        ${CMAKE_CURRENT_LIST_DIR}/popen.c
        ${CMAKE_CURRENT_LIST_DIR}/printf.c
        ${CMAKE_CURRENT_LIST_DIR}/putc.c
        ${CMAKE_CURRENT_LIST_DIR}/putchar.c
        ${CMAKE_CURRENT_LIST_DIR}/putchar_unlocked.c
        ${CMAKE_CURRENT_LIST_DIR}/putc_unlocked.c
        ${CMAKE_CURRENT_LIST_DIR}/puts.c
        ${CMAKE_CURRENT_LIST_DIR}/putw.c
        ${CMAKE_CURRENT_LIST_DIR}/putwc.c
        ${CMAKE_CURRENT_LIST_DIR}/putwchar.c
        ${CMAKE_CURRENT_LIST_DIR}/remove.c
        ${CMAKE_CURRENT_LIST_DIR}/rename.c
        ${CMAKE_CURRENT_LIST_DIR}/rewind.c
        ${CMAKE_CURRENT_LIST_DIR}/scanf.c
        ${CMAKE_CURRENT_LIST_DIR}/setbuf.c
        ${CMAKE_CURRENT_LIST_DIR}/setbuffer.c
        ${CMAKE_CURRENT_LIST_DIR}/setlinebuf.c
        ${CMAKE_CURRENT_LIST_DIR}/setvbuf.c
        ${CMAKE_CURRENT_LIST_DIR}/snprintf.c
        ${CMAKE_CURRENT_LIST_DIR}/sprintf.c
        ${CMAKE_CURRENT_LIST_DIR}/sscanf.c
        ${CMAKE_CURRENT_LIST_DIR}/stderr.c
        ${CMAKE_CURRENT_LIST_DIR}/stdin.c
        ${CMAKE_CURRENT_LIST_DIR}/__stdio_close.c
        ${CMAKE_CURRENT_LIST_DIR}/__stdio_exit.c
        ${CMAKE_CURRENT_LIST_DIR}/__stdio_read.c
        ${CMAKE_CURRENT_LIST_DIR}/__stdio_seek.c
        ${CMAKE_CURRENT_LIST_DIR}/__stdio_write.c
        ${CMAKE_CURRENT_LIST_DIR}/stdout.c
        ${CMAKE_CURRENT_LIST_DIR}/__stdout_write.c
        ${CMAKE_CURRENT_LIST_DIR}/__string_read.c
        ${CMAKE_CURRENT_LIST_DIR}/swprintf.c
        ${CMAKE_CURRENT_LIST_DIR}/swscanf.c
        ${CMAKE_CURRENT_LIST_DIR}/tempnam.c
        ${CMAKE_CURRENT_LIST_DIR}/tmpfile.c
        ${CMAKE_CURRENT_LIST_DIR}/tmpnam.c
        ${CMAKE_CURRENT_LIST_DIR}/__toread.c
        ${CMAKE_CURRENT_LIST_DIR}/__towrite.c
        ${CMAKE_CURRENT_LIST_DIR}/__uflow.c
        ${CMAKE_CURRENT_LIST_DIR}/ungetc.c
        ${CMAKE_CURRENT_LIST_DIR}/ungetwc.c
        ${CMAKE_CURRENT_LIST_DIR}/vasprintf.c
        ${CMAKE_CURRENT_LIST_DIR}/vdprintf.c
        ${CMAKE_CURRENT_LIST_DIR}/vfprintf.c
        ${CMAKE_CURRENT_LIST_DIR}/vfscanf.c
        ${CMAKE_CURRENT_LIST_DIR}/vfwprintf.c
        ${CMAKE_CURRENT_LIST_DIR}/vfwscanf.c
        ${CMAKE_CURRENT_LIST_DIR}/vprintf.c
        ${CMAKE_CURRENT_LIST_DIR}/vscanf.c
        ${CMAKE_CURRENT_LIST_DIR}/vsnprintf.c
        ${CMAKE_CURRENT_LIST_DIR}/vsprintf.c
        ${CMAKE_CURRENT_LIST_DIR}/vsscanf.c
        ${CMAKE_CURRENT_LIST_DIR}/vswprintf.c
        ${CMAKE_CURRENT_LIST_DIR}/vswscanf.c
        ${CMAKE_CURRENT_LIST_DIR}/vwprintf.c
        ${CMAKE_CURRENT_LIST_DIR}/vwscanf.c
        ${CMAKE_CURRENT_LIST_DIR}/wprintf.c
        ${CMAKE_CURRENT_LIST_DIR}/wscanf.c
)
