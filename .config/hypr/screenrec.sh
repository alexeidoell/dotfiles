#!/bin/bash

pgrep -x "wl-screenrec" && pkill -INT -x wl-screenrec && notify-send -h string:wl-screenrec:record -t 2000 "Finished Recording" && exit 0

sleep 0.1
area=$(slurp) && notify-send -h string:wl-screenrec:record -t 2000 "Recording Started" || exit 0
~/.cargo/bin/wl-screenrec -g "$area" -f /home/adoell/Videos/Screencasts/"$(date +%F_%T)".mp4
