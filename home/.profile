export ENV=~/.ashrc
export PATH=/usr/lib/ccache/bin:~/bin:~/.local/bin:$PATH:
export TZ=UTC
export XDG_DATA_HOME=$HOME/.sx
export XDG_CONFIG_HOME=$HOME/.sx
export KISS_SU=doas

[ ! -s ~/.config/mpd/pid ] && mpd
[[ -t 0 && $(tty) == /dev/tty1 && ! $DISPLAY ]] && sx
