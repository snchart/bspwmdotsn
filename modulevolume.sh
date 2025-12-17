#!/bin/bash

VOL=$(pactl get-sink-volume 0 2>/dev/null | awk 'NR==1 {print $5}')
if [ "$(pactl get-sink-mute 0 | awk '{print $2}')" = "yes" ]; then
    echo "󰝟 $VOL "
else
    echo "󰕾 $VOL "
fi
