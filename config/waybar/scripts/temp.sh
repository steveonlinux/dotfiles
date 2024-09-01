#!/bin/sh

#temp=$(sensors | grep -i tctl | awk '{FS==" "} ; {print $2}' | cut -c 2-)

temp=$(sensors | awk '/Tctl:/ {print substr($2, 2)}')

echo "{\"text\": \"$temp\", \"class\": \"custom-temp\"}"
