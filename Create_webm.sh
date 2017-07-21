#!/bin/bash

echo "Keep all files in the same folder. Only set the names of them, no directory structure (paths)!"
echo "Drag and Drop your video file (e.g. Video.avi) onto this batch file."
echo This script convert your .avi video into a .webm video.
echo
echo Encoding...
AVIINPUT=${$1%.*}
AVIINPUText=$1
ffmpeg -i "$AVIINPUText" -codec:v libvpx -quality good -cpu-used 0 -b:v 500k -qmin 10 -qmax 42 -maxrate 500k -bufsize 1000k -codec:a libvorbis -b:a 128k $AVIINPUT.webm
echo Done.
