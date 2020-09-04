# dotfiles - our home
# See LICENSE file for copyright and license details.

install:
	mkdir -p ${DESTDIR}${HOME}/dotfiles
	mkdir -p ${DESTDIR}${HOME}/.local
	mkdir -p ${DESTDIR}${HOME}/.config/mpd
	mkdir -p ${DESTDIR}${HOME}/.config/sx
	mkdir -p ${DESTDIR}${HOME}/.ncmpcpp
	cp -rp .git LICENSE Makefile README Screenshot.png bin boot config etc git\
		home ncmpcpp rtorrent vim ${DESTDIR}${HOME}/dotfiles
	install -D -o root -g root boot/.keep -t ${DESTDIR}${HOME}/dotfiles/boot
	ln -sf ${HOME}/dotfiles/bin                   ${DESTDIR}${HOME}/.local/bin
	ln -sf ${HOME}/dotfiles/config/mpd/mpd.conf   ${DESTDIR}${HOME}/.config/mpd/mpd.conf
	ln -sf ${HOME}/dotfiles/config/sx/sxrc        ${DESTDIR}${HOME}/.config/sx/sxrc
	ln -sf ${HOME}/dotfiles/git/.gitconfig        ${DESTDIR}${HOME}/.gitconfig
	ln -sf ${HOME}/dotfiles/home/.profile         ${DESTDIR}${HOME}/.profile
	ln -sf ${HOME}/dotfiles/ncmpcpp/config        ${DESTDIR}${HOME}/.ncmpcpp/config
	ln -sf ${HOME}/dotfiles/rtorrent/.rtorrent.rc ${DESTDIR}${HOME}/.rtorrent.rc
	ln -sf ${HOME}/dotfiles/vim/.vimrc            ${DESTDIR}${HOME}/.vimrc
	mkdir -p ${DESTDIR}/boot
	mkdir -p ${DESTDIR}/etc/X11/xorg.conf.d
	ln -sf ${HOME}/dotfiles/boot/.keep      ${DESTDIR}/boot/.keep
	ln -sf ${HOME}/dotfiles/etc/X11/xorg.conf.d/00-keyboard.conf\
		${DESTDIR}/etc/X11/xorg.conf.d/00-keyboard.conf
	ln -sf ${HOME}/dotfiles/etc/asound.conf ${DESTDIR}/etc/asound.conf
	ln -sf ${HOME}/dotfiles/etc/keymap.bmap ${DESTDIR}/etc/keymap.bmap
	ln -sf ${HOME}/dotfiles/etc/localtime   ${DESTDIR}/etc/localtime
	ln -sf ${HOME}/dotfiles/etc/timezone    ${DESTDIR}/etc/timezone

uninstall:

.PHONY: install uninstall
