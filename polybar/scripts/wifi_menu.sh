#!/bin/zsh

WIFI_MENU=""$(nmcli -f SSID device wifi list | tail -n +2 | rofi -dmenu -p "Wi-Fi Networks" -theme "/usr/share/rofi/themes/wifi.rasi")

if [ ! -z "$WIFI_MENU" ]; then
    SSID=$(echo "$WIFI_MENU" | awk '{print $1}')
    nmcli device wifi connect "$SSID" password $(rofi -dmenu -p "Password") -theme "/usr/share/rofi/themes/wifi.rasi"
fi
