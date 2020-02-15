#!/bin/sh

xrdb -merge ~/.Xresources &

xbindkeys &

xbacklight -set 30 &
amixer -q set Master 25% &

redshift -l 51.505:0.055 -t 5700:3600 -g 0.8 -m randr &

hsetroot -fill ~/lib/img/wall/wallpaper.jpg &

~/bin/bar &
exec 2bwm
