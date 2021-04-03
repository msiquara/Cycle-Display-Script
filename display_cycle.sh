#!/bin/sh

MONITOR=$(xrandr --listactivemonitors)

MONITOR_SIZE=${#MONITOR}

if [[ $MONITOR_SIZE -gt 60 ]]
then
	echo "turning off second monitor"
	xrandr --output HDMI-0 --off
else
	echo "joining displays"
	xrandr --output HDMI-0 --mode 1366x768 --pos 1920x312
fi
