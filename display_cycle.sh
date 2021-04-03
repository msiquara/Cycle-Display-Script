#!/bin/sh

MONITOR=$(xrandr --listactivemonitors)

MONITOR_SIZE=${#MONITOR}

if [[ $MONITOR_SIZE -gt 65 ]]
then
	# turning off second display
	xrandr --output HDMI-0 --off
else
	# joining displays
	xrandr --output HDMI-0 --mode 1366x768 --pos 1920x312
fi
