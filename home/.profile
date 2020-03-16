export ENV=~/.ashrc
export PATH=/usr/lib/ccache/bin:~/bin:~/.local/bin:$PATH

[[ -t 0 && $(tty) == /dev/tty1 && ! $DISPLAY ]] && startx
