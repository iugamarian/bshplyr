#!/bin/bash

# GPIO PIN setup for input
# ver. 20121007


PIN="$1" # pin number


if [ "$#" -lt 1 ]; then
  echo 1>&2 "$0: not enough arguments"
  echo 1>&2 "$0: usage: $0 [pin]"
  exit 2
elif [ "$#" -gt 1 ]; then
  echo 1>&2 "$0: too many arguments"
  echo 1>&2 "$0: usage: $0 [pin]"
  exit 2
fi

# select the gpioxx if it is not selected
if [ ! -f "/sys/class/gpio/gpio$PIN/direction" ]; then # if port was not exported then make so wich creates this dir

echo "$PIN" > /sys/class/gpio/export # set up of pin and file gpioxx/direction is made by the kernel
fi

# determine pin status after making sure it's selected
echo "in" > "/sys/class/gpio/gpio$PIN/direction" # set the pin in input mode
# "out" would set it up in out mode but not needed here
cat /sys/class/gpio/gpio"$PIN"/value
