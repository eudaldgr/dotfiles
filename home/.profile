export ENV=~/.ashrc
export PATH=/usr/lib/ccache/bin:~/bin:~/.local/bin:$PATH:

[[ -t 0 && $(tty) == /dev/tty1 && ! $DISPLAY ]] && startx
if [ -e /home/eudaldgr/.nix-profile/etc/profile.d/nix.sh ]; then . /home/eudaldgr/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer
