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
alias updateqnap='rsync -av --delete --progress /mnt/music/ /mnt/music247/'
alias backupmusic='XZ_OPT=-9 tar cJf music.bak.tar.xz /mnt/core/music/Music'
alias homestead='function __homestead() { (cd ~/Homestead && vagrant $*); unset -f __homestead; }; __homestead'
#alias cp='acp -g'
alias fauvpn='sudo echo Poo.y6th | sudo openconnect -u id06ezen --authgroup=FAU-Fulltunnel -passwd-on-stdin vpn.fau.de'

parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}


export PS1="\[\033[1;32m\]\u\[\033[0m\]@\[\033[0;32m\]\h:\[\033[0;36m\]\W\[\033[1;32m\]\$(parse_git_branch)\[\033[00m\] "
#export PS1="\u@\h \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "


#export PATH=$PATH:/opt/android-sdk/tools/:/opt/android-sdk/platform-tools/
export ANDROID_HOME=/opt/android-sdk
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/platform-tools

export PATH=$PATH:/opt/Etcher/
#export PATH="$(ruby -e 'print Gem.user_dir')/bin:$PATH"
export PATH="$PATH:$HOME/bin"
export PATH="$PATH:$HOME/.virtualenvs/slot"
export PATH="$PATH:$HOME/.gem/ruby/2.5.0/bin"


export EDITOR=vim
export TERMINAL=urxvtc
#export BROWSER=chromium
export BROWSER=firefox

export WORKON_HOME="~/.virtualenvs"
source "/usr/bin/virtualenvwrapper.sh"

testmic() {
    arecord -vvv -f dat /dev/null
}

backupsd(){
    #sudo dd bs=4M if=$1 | pv | gzip > /home/sebastian/$2_image`date +%d%m%y`.gz
    sudo dd bs=4M if=$1 | pv | of=/home/sebastian/$2_image`date +%d%m%y`.gz
}

splitimage(){
    magick $1 -crop 50%x100% +repage split.jpg
}

# save path on cd
function cd {
    builtin cd "$@"
    pwd > ~/.last_dir
}

# restore last saved path
if [ -f ~/.last_dir ]
    then cd "`cat ~/.last_dir`"
fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/opt/google-cloud-sdk/path.bash.inc' ]; then source '/opt/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/opt/google-cloud-sdk/completion.bash.inc' ]; then source '/opt/google-cloud-sdk/completion.bash.inc'; fi
