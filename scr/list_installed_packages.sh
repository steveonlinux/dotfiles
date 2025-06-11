#!/bin/sh

pacman -Qe | awk '{print $1}' > ./explicitly_installed.txt
pacman -Qm | awk '{print $1}'> ./aur_installed.txt
flatpak list --columns=application --app > ./flat_installed.txt

