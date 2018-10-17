MSG=''

if [ "$1" == "dec" ]; then
	MSG=`amixer sset Master,0 5%- `
elif [ "$1" == "inc" ]; then
	MSG=`amixer sset Master,0 5%+ `
elif [ "$1" == "toggle" ]; then
	MSG=`amixer sset Master,0 toggle `
fi
TEXT=`echo $MSG | egrep -o "\[.*\]" | cut -d' ' -f1,3`
notify-send -t 500 "$TEXT"

