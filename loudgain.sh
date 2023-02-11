for i in *.flac ; do 
    loudgain -a -k -s e "$i"
done

for i in *.ogg ; do 
    loudgain -a -k -s e "$i"
done

for i in *.mp3 ; do 
    loudgain -I3 -S -L -a -k -s e "$i"
done

for i in *.m4a ; do 
    loudgain -L -a -k -s e "$i"
done
