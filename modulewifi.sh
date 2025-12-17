#!/bin/bash

wifi(){
    SSID=$(nmcli -t -f NAME c show --active | awk 'NR==1')
    if echo "$SSID" 2>/dev/null | grep -qi "HUAWEI"; then
         echo " HUAWEI "
    elif [ -n "$SSID" ]; then
         echo " $SSID "
    else
         echo ""
    fi
}

echo $(wifi)

