#!/bin/bash

temp(){
    TEMP=$(sensors 2>/dev/null | grep -i 'core 0' | awk '{print int($3)"°C"}' | tr -d '+')
    echo "$TEMP"
}

echo $(temp)

