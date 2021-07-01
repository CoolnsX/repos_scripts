#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar

# custom script
rm $HOME/wallpapers/x.png 
conky -c "/home/tanveer/.conky/Rock and Roll/Rock/Hermoso_Rc" & 
conky -c "/home/tanveer/.conky/Rock and Roll/Rock 1/.conkyrc" &
sleep 2
maim --hidecursor -d 1 $HOME/wallpapers/x.png #screenshot of wallpaper with conky running
killall -q conky &
xwallpaper --stretch $HOME/wallpapers/x.png & #apply that screenshot as wallpaper

# Launch polybar
polybar example &

