#!/bin/sh
#grim 

slurp | grim -g - ~/imgs/screenshot_$(date +'%Y%m%d_%H%M%S').png
