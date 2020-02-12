#!/bin/sh

xrdb -merge ~/.Xresources &

hsetroot -fill ~/lib/img/wall/wallpaper.jpg &

~/bin/bar &
exec 2bwm
