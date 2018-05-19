#!/bin/bash

# $1 builddir
# $2 srcdir
# $3 ARCH

mkdir -p $1/include/bits
sed -f $2/tools/mkalltypes.sed $2/arch/$3/bits/alltypes.h.in \
    $2/include/alltypes.h.in > $1/include/bits/alltypes.h
