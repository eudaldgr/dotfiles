alias l='ls'
alias la='ls -lha'
alias ll='ls -lh'
alias l.='ls -ad .*'
alias ll.='ls -lhad .*'

alias please='sudo $(fc -ln -1)'

alias upd='sudo xbps-install -Suv'
alias ins='sudo xbps-install'

alias vi='vim'

alias clav-scan="clamscan --recursive=yes --infected /home"
alias clav-upd="sudo freshclam"
alias rkh="sudo rkhunter --update; sudo rkhunter --propupd; sudo rkhunter --check"
