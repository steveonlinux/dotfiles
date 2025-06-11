#!/bin/sh

user_name=steve

install_explicit() {
	pacman -Syu
	echo "Installing all explicit packages"
	for pkgName in $(cat ./explicitly_installed.txt)
	do
  	pacman -S --noconfirm "$pkgName"
	done
	echo "Reinstalled all explicit packages."
}

install_aur() {
	echo "Installing aur packages"
	for pkgName in $(cat ./aur_installed.txt)
	do
	sudo -u $user_name yay -S --force --noconfirm "$pkgName"
	done
	echo "Reinstalled aur packages"
}

install_explicit;install_aur
