poweroff='󰤆'
reboot='󰜉'
lock='󰌾'

optionp=$(printf " $poweroff \n $reboot \n $lock \n" | rofi -dmenu -i -theme power.rasi)

case "$optionp" in
    " $poweroff ") doas poweroff ;;
    " $reboot ") doas reboot ;;
    " $lock ") bspc quit ;;
esac
