#! /bin/bash 
#lxsession &
xrandr --output eDP-1 --primary --mode 2256x1504 --rate 60.00 & 
picom --experimental-backends --no-fading-openclose &
feh --bg-fill /home/steve/dl/wlp/sg-1_crew2.jpg &
#nitrogen --restore &
#urxvtd -q -o -f &
#/usr/bin/emacs --daemon &
volumeicon &
nm-applet &
