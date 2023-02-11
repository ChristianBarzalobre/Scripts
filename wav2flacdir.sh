SAVEIFS=$IFS
IFS=$'\n'
find ./ -type f \( -name '*.wav' -o -name '*.amr' \) -print | while read i ;do
mkdir -p ./Flac`dirname "${i:1}"`
    echo "$i"
    sox "$i" ./Flac"${i:1:-4}".flac
    done
IFS=$SAVEIFS