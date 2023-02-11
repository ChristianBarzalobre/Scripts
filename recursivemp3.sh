#!/bin/bash
SAVEIFS=$IFS
IFS=$'\n'
find ./ -type f \( -name '*.flac' -o -name '*.amr' \) -print | while read i ;do
mkdir -p ./MP3`dirname "${i:1}"`
    sox "$i" -C 320 ./MP3"${i:1:-4}"mp3
    done
IFS=$SAVEIFS
