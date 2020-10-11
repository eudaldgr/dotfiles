export ENV=$HOME/etc/ash/rc

[ "$DISPLAY" ] || {
    export DISPLAY=:0
    read -r && \
        XDG_DATA_HOME=$HOME/etc/data \
        XDG_CACHE_HOME=$HOME/var/cache \
        $HOME/bin/x
}
