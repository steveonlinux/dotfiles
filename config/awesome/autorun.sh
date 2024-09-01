#!/usr/bin/env bash

function run {
	if ! pgrep -f $1 ;
	then
		$@&
	fi
}

#run nitrogen --restore
feh --bg-fill /home/steve/dl/wlp/sg-1_sam_x2.jpg
#picom -c -r 15 --experimental-backends --no-fading-openclose --blur-size 10 --xrender-sync-fence & disown # --blur-background
picom -c -r 15 --no-fading-openclose --blur-size 10 --xrender-sync-fence & disown # --blur-background
#run redshift-gtk
#run xrandr --output DP-0 --primary --mode 1920x1080 --rate 144.00 --left-of HDMI-0 --output HDMI-0 --mode 1920x1080 --rate 59.93
