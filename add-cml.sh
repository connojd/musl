#!/bin/bash

if [ ! -d $1 ];
then
    echo "USAGE: ./add-cml.sh <srcdir>"
    exit 22
fi

dir='${CMAKE_CURRENT_LIST_DIR}'
cml=$1/CMakeLists.txt

echo "#" >> $cml
echo "# $dir/CMakeLists.txt" >> $cml
echo "#" >> $cml
echo 'target_sources(${target}' >> $cml
echo '    PRIVATE' >> $cml

# Generate CMakeLists
for src in $(ls $1)
do
    case $(basename $src) in
    *.c|*.h)
        echo "        $dir/$(basename $src)" >> $cml
        ;;
    *)
        ;;
    esac
done

echo ')' >> $cml
