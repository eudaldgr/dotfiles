export PATH=/usr/lib/ccache/bin:$HOME/.local/bin:$PATH:

export XDG_DATA_HOME=$HOME/.config
export XDG_CONFIG_HOME=$HOME/.config

export PASH_KEYID=hola@eudald.gr
export PASH_DIR=$HOME/.local/share/pash

export CFLAGS='-march=native -pipe -O3 -fno-math-errno'
export CXXFLAGS="$CFLAGS"
export MAKEFLAGS='-j12'

export KISS_SU=doas
export KISS_HOOK=$HOME/.local/bin/kiss-hook
export KISS_PATH=''
KISS_PATH=$KISS_PATH:$HOME/repos/eudald-kiss
KISS_PATH=$KISS_PATH:$HOME/repos/repo/core
KISS_PATH=$KISS_PATH:$HOME/repos/repo/extra
KISS_PATH=$KISS_PATH:$HOME/repos/repo/xorg
KISS_PATH=$KISS_PATH:$HOME/repos/community/community

doas loadkmap < /etc/keymap.bmap

[[ -t 0 && $(tty) == /dev/tty1 && ! $DISPLAY ]] && sx
