# dotfiles - our home
# See LICENSE file for copyright and license details.

all:
	@echo "Use 'make install'"

mkdirs:
	mkdir -p ${DESTDIR}${HOME}/dotfiles
	mkdir -p ${DESTDIR}${HOME}/.local
	mkdir -p ${DESTDIR}${HOME}/.config/mpd
	mkdir -p ${DESTDIR}${HOME}/.config/sx
	mkdir -p ${DESTDIR}${HOME}/.ncmpcpp

mklink:
	ln -sf ${HOME}/dotfiles/bin                   ${DESTDIR}${HOME}/.local/bin
	ln -sf ${HOME}/dotfiles/config/mpd/mpd.conf   ${DESTDIR}${HOME}/.config/mpd/mpd.conf
	ln -sf ${HOME}/dotfiles/config/sx/sxrc        ${DESTDIR}${HOME}/.config/sx/sxrc
	ln -sf ${HOME}/dotfiles/git/.gitconfig        ${DESTDIR}${HOME}/.gitconfig
	ln -sf ${HOME}/dotfiles/home/.profile         ${DESTDIR}${HOME}/.profile
	ln -sf ${HOME}/dotfiles/ncmpcpp/config        ${DESTDIR}${HOME}/.ncmpcpp/config
	ln -sf ${HOME}/dotfiles/rtorrent/.rtorrent.rc ${DESTDIR}${HOME}/.rtorrent.rc
	ln -sf ${HOME}/dotfiles/vim/.vimrc            ${DESTDIR}${HOME}/.vimrc

install: mkdirs mklink
	cp -rp .git LICENSE Makefile README Screenshot.png bin boot config etc git\
		home ncmpcpp rtorrent vim ${DESTDIR}${HOME}/dotfiles

.PHONY: install
