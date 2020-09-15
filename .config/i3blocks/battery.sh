BAT=$(upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep "percentage" | cut -c 26,27)

[[ $BAT -le 10 ]] && zenity --warning --text "Critical Battery Level" --width 170 --height 120

echo "$BAT%"
