#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
#alias pacaur='pacaur --noedit --noconfirm '
alias pacuar='pacaur'
alias aur='pacaur -Syua --ignore intellij-idea-ultimate --noedit --noconfirm'
alias starxt='startx'
alias scprogress='rsync -av --progress -e ssh $1 $2'
alias cprogress='rsync -a --stats --progress'
alias skype='apulse32 skype'
alias alsa_restart='alsactl kill rescan'
alias gparted='sudo gpartedbin &'
alias ripcd='abcde -o flac -Mx'
alias updateqnap='rsync -av --delete --progress /mnt/core/music/Music/ /mnt/qnap/Music/'
alias backupmusic='XZ_OPT=-9 tar cJf music.bak.tar.xz /mnt/core/music/Music'
alias homestead='function __homestead() { (cd ~/Homestead && vagrant $*); unset -f __homestead; }; __homestead'
#alias cp='acp -g'



PS1='\[\033[1;32m\]\u\[\033[0m\]@\[\033[0;32m\]\h:\[\033[0;36m\]\W \[\033[1;32m\]\$ \[\033[0m\]'

export PATH=$PATH:/opt/android-sdk/tools/:/opt/android-sdk/platform-tools/
#export PATH="$(ruby -e 'print Gem.user_dir')/bin:$PATH"
export PATH="$PATH:$HOME/bin"


export EDITOR=vim
export TERMINAL=urxvtc
export BROWSER=chromium

export WORKON_HOME="~/.virtualenvs"
source "/usr/bin/virtualenvwrapper.sh"
export DJANGO_SETTINGS_MODULE=bidhot.settings_local

testmic() {
    arecord -vvv -f dat /dev/null
}

backupsd(){
    #sudo dd bs=4M if=$1 | pv | gzip > /home/sebastian/$2_image`date +%d%m%y`.gz
    sudo dd bs=4M if=$1 | pv | of=/home/sebastian/$2_image`date +%d%m%y`.gz
}

export PATH="$PATH:$HOME/.config/composer/vendor/bin"
