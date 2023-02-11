for i in .flac ; do 
    sox "$i" -C 320 "$(basename "${i/.flac}")".mp3
done
