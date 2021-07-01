#!/bin/bash
if ps aux | grep "picom$" ; then
	killall -q picom
	sleep 1
	notify-send "picom vsync on" 
	picom --vsync &
else
	killall -q picom
	sleep 1
	picom &
	notify-send "picom vsync off"
fi

