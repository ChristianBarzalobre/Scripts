for i in *.wav ; do 
    sox "$i" "$(basename "${i/.wav}")".flac
done
