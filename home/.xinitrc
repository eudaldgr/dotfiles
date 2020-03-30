#!/bin/sh

xrdb -merge ~/.Xresources

picom -b --config ~/.config/picom.conf

xbacklight -set 50
amixer -c 1 -q set Master 40%

hsetroot -fill ~/lib/img/wall/wallpaper.jpg

~/bin/bar &
exec 2bwm
