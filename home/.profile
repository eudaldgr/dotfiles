export ENV=~/.ashrc
export PATH=/usr/lib/ccache/bin:~/bin:~/.local/bin:$PATH:
export TZ=UTC-2

[ ! -s ~/.config/mpd/pid ] && mpd
[[ -t 0 && $(tty) == /dev/tty1 && ! $DISPLAY ]] && startx
