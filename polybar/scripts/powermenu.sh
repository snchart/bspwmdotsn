#!/bin/bash

# Опции
shutdown=" Power Off"
reboot=" Reboot"
lock=" Lock"
suspend=" Suspend"

# Вызов rofi для выбора опции
option=$(echo -e "$shutdown\n$reboot\n$lock\n$suspend" | rofi -dmenu -p" "Действие: -theme "/usr/share/rofi/themes/powermenu.rasi")

case "$option" in
  "$shutdown")
    systemctl poweroff
    ;;
  "$reboot")
    systemctl reboot
    ;;
  "$lock")
    loginctl terminate-user $USER
    ;;
  "$suspend")
    systemctl suspend
    ;;
esac
