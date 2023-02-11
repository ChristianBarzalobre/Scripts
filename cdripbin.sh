for i in *.bin ; do 
    y=$((x++))
    bchunk -w "$i" "Kirby Triple Deluxe Sound Selection (Japan).cue" "$y"
done
