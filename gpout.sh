#!/bin/bash

# GPIO PIN setup for output
# ver. 20121007


PIN="$1" # pin number
OUTPUT_VALUE="$2" # boolean


if [ "$#" -lt 2 ]; then
  echo 1>&2 "$0: not enough arguments"
  echo 1>&2 "$0: usage: $0 [pin] [boolean]"
  exit 2
elif [ "$#" -gt 2 ]; then
  echo 1>&2 "$0: too many arguments"
  echo 1>&2 "$0: usage: $0 [pin] [boolean]"
fi

if [ ! -f "/sys/class/gpio/gpio$PIN/direction" ]; then # if port was not exported then make so wich creates this dir
   
echo "$PIN" > /sys/class/gpio/export # set up of pin

fi

echo "out" > /sys/class/gpio/gpio"$PIN"/direction # set the pin in output mode
echo "$OUTPUT_VALUE" > /sys/class/gpio/gpio"$PIN"/value 
