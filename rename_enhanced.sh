#!/bin/sh
# file name : rename_enhanced.sh


echo "input what suffix will be replaced :"
read SUFFIX_SRC
echo "input what suffix will ve replaced to:"
read SUFFIX_DST


for i in *$SUFFIX_SRC*
do
    if [ -e $i ]; then
        echo "mv $i to `basename $i $SUFFIX_SRC`$SUFFIX_DST"
        mv $i `basename $i $SUFFIX_SRC`$SUFFIX_DST
    else
        echo "file does not exist."
        exit -1
    fi

done