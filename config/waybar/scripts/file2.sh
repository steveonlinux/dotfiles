#! /bin/sh

free="$(df /home --output=pcent | awk 'FNR == 2 {print}')"
#echo -e "$free "
echo "{\"text\": \"$free \", \"class\": \"custom-file\"}"
