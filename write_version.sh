#!/bin/bash

# $1 builddir
# $2 srcdir

mkdir -p $1/src/internal
printf '#define VERSION "%s"\n' $(cd $2; sh tools/version.sh) > $1/src/internal/version.h
