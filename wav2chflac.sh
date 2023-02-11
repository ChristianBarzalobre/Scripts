for i in *.wav ; do 
    sox "$i" -c 2 "$(basename "${i/.wav}")".flac
done
