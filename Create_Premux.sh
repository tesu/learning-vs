#!/bin/bash

audio="trimmed.aac"
echo Keep all files in the same folder. Only set the filenames, not the paths
echo
echo Premux
echo
mkvmerge -o "$1_premux.mkv" "$1" --no-chapters "$1.$audio"
echo Done
if [ -e $1 ]
then
    rm "$1.$audio"
    rm "$1"
fi

