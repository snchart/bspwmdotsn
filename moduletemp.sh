#!/bin/bash

temp(){
     TEMP=$(sensors 2>/dev/null | grep -i 'core 0' | awk '{print $3}' | tr -d '+')
     echo "$TEMP "
}

echo $(temp)

