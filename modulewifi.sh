#!/bin/bash

wifi(){
    SSID=$(iwgetid -r | cut -c1-6)
    if [ -n "$SSID" ]; then
         echo " $SSID "
    else
         echo ""
    fi
}

echo $(wifi)

