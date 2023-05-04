#!/usr/bin/env bash
if [ $HOSTNAME = "cobra" ]; then
	xrandr --output HDMI-1 --mode 2560x1080 --rate 75 --primary
	xrandr --output HDMI-2 --mode 2560x1080 --rate 75 --above HDMI-1
fi

if [ $HOSTNAME = "mamba" ]; then
	xrandr --output DP-2 --auto --pos 0x560 --primary
	xrandr --output DP-4 --auto --rotate left --pos 3440x0
fi

dunst &
