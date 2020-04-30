#!/bin/sh

xrdb -merge ~/.Xresources

picom -b --config ~/.config/picom.conf

amixer -c 1 -q set Master 60%

hsetroot -fill ~/lib/img/wall/wallpaper.jpg

~/bin/clock &
~/bin/bar &
exec 2bwm
