for i in *.flac ; do 
    metaflac --add-replay-gain "$i"
    echo "$i"
done

for i in *.ogg ; do 
    vorbisgain -a -f -r "$i"
    echo "$i"
done

for i in *.mp3 ; do 
    mp3gain "$i"
    echo "$i"
done

for i in *.m4a ; do 
    loudgain -L -a -k -s e "$i"
    echo "$i"
done
