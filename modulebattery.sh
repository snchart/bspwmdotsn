#!/bin/bash

battery(){
     BAT=$( upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep 'percentage' | awk '{print $2}' | tr -d '%')
     CH=$( upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep 'state' | awk '{print $2}')
     if [[ "$CH" = "charging" || "$CH" = "fully-charged" ]]; then
        echo " 󰂄 $BAT% "
     elif [ "$BAT" -eq "100" ]; then
            echo " 󰁹 $BAT% "
         elif [ "$BAT" -le "10" ]; then
            echo " 󰁻 $BAT% "
         elif [ "$BAT" -le "50" ]; then
            echo " 󰁾 $BAT% "
         elif [ "$BAT" -le "80" ]; then
            echo " 󰂁 $BAT% "
        elif [ "$BAT" -ge "81" ]; then
            echo " 󰂁 $BAT% "
     fi
}

echo $(battery)
