#!/bin/bash

temp(){
     TEMP=$(sensors | grep -i 'core 0' | awk '{print $3}' | tr -d '+')
     echo "$TEMP "
}

echo $(temp)

