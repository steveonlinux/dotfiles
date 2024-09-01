#!/bin/sh
free="📂$(df / --output=pcent | awk 'FNR == 2 {print}')"
cpu_temp="🔥$(sensors | awk 'NR == 11'     | awk '{FS == " " } ; {print $2}' |     cut -c 2- )"
cpu="$(grep "cpu" /proc/stat |tail -1|awk '{print ($5*100)/($2+$3+$4+$5+$6+$7+$8+$9+$10)}'|awk '{print "🏃" 100-$1"%"}')"
date="$(date +'📅%Y-%m-%d')"
time="$(date +'🕰️%I:%M:%S %p')"
cupd="📦$(checkupdates | wc -l)"
mem="🐏$(free -h | awk '/^Mem:/ {print $3 "/" $2}')"
battery="🔋$(acpi -b | cut -d " " -f 4 | rev | cut -b 2- | rev)"
ssid="📶$(iwgetid -r)"
echo $ssid\|$free\|$battery\|$cpu\|$cpu_temp\|$mem\|$cupd\|$date\|$time
