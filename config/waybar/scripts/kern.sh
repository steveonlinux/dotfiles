#! /bin/sh

kern="$(uname -r)"
#echo -e "$kern "
echo  "{\"text\": \"$kern \", \"class\": \"custom-kern\"}"
