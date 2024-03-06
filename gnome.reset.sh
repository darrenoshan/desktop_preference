#!/usr/bin/bash 



dconf reset -f /org/gnome/
dconf reset -f /org/gnome/shell/extensions/dash-to-panel/

xdg-mime default nautilus.desktop inode/directory

rm -rf .gnome .gnome2 .gconf .gconfd .metacity .cache .dbus .dmrc .mission-control .thumbnails ~/.config/dconf/user ~.compiz*


killall -9 -u $USER

