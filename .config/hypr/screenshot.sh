#!/bin/bash

pgrep -x "wl-screenrec" && pkill -INT -x wl-screenrec && notify-send -h string:wl-screenrec:record -t 2000 "Finished Recording" && exit 0

hyprpicker -r -z &
sleep 0.1
HYPRPICKER_PID=$!
area=$(slurp)
if [[ ${#area} -eq 0 ]]
then
    pkill hyprpicker
    exit 0
fi
output="/home/adoell/Pictures/Screenshots/$(date +%F_%T).png"
grim -g "$area" $output && wl-copy --type image/png < $output
pkill hyprpicker

notify-send -h string:grim:screenshot -t 2000 "Screenshot Copied"
