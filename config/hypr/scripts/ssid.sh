#! /bin/sh

ssid="$(iwgetid -r)"
echo "{\"text\": \"$ssid\", \"class\": \"custom-ssid\"}"
