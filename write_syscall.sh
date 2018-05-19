#!/bin/bash

# $1 builddir
# $2 srcdir
# $3 ARCH

mkdir -p $1/include/bits
cp $2/arch/$3/bits/syscall.h.in $1/include/bits/syscall.h
sed -n -e s/__NR_/SYS_/p < $2/arch/$3/bits/syscall.h.in >> $1/include/bits/syscall.h
