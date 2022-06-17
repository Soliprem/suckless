#!/bin/bash
# $name and $repodir are set in another script (SARCH.sh)
./build.sh
mkdir /home/$"name"/.local/share/dwm
sudo mkdir /usr/share/xsessions
sudo mv "$repodir"/suckless/dwm/dwm.desktop /usr/share/xsessions
sudo mv "$repodir"/suckless /home/"$name"/.config/suckless
ln -s "$repodir"/suckless/dwm/autostart.sh /home/"$name"/.config/suckless/dwm
