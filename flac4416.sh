SAVEIFS=$IFS
IFS=$'\n'
find ./ -type f \( -name '*.flac' -o -name '*.amr' \) -print | while read i ;do
mkdir -p ./Down`dirname "${i:1}"`
    sox "$i" -r 44100 -b 16 ./Down"${i:1:-4}"flac
    done
IFS=$SAVEIFS