#! /bin/sh
text=$(free -h | awk '/^Mem:/ {print $3 "/" $2}')

echo "{\"text\": \"$text\", \"class\": \"custom-mem\"}"

