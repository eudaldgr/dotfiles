export ENV=$HOME/conf/ash/rc

[ "$DISPLAY" ] || {
    export DISPLAY=:0
    read -r && \
        XDG_DATA_HOME=$HOME/conf/data \
        XDG_CACHE_HOME=$HOME/conf/cache \
        $HOME/bin/x
}
