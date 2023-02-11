for i in *.iso ; do 
    sacd_extract -2 -s -i "$i"
done
