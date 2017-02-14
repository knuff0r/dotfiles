#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc
#start x at login
[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx

