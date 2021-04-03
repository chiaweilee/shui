#!/bin/sh
# file name : ffmpeg_ssto.sh


echo "input file:"
read SUFFIX_SRC
echo "input ss:"
read SUFFIX_SS
echo "input to:"
read SUFFIX_TO

mkdir output
ffmpeg -i $SUFFIX_SRC -vcodec copy -acodec copy -ss $SUFFIX_SS -to $SUFFIX_TO output/$SUFFIX_SRC
