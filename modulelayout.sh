#!/bin/bash

layout(){
     code=$(xset -q | grep 'LED mask' | awk '{print $NF}')
     caps=$(xset -q | grep Caps | awk '{print $4}')
     if [[ $code -eq "00000000" || $code -eq "00000002" ]]; then
	echo " en"
     else
	if [[ $code -eq "00000001" || $code -eq "00000003" ]]; then
		echo " EN"
	elif [ "$caps" = "on" ]; then
		echo " RU"
	else
		echo " ru"
	fi
     fi
}

echo $(layout)
