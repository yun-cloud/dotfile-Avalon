#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export EDITOR='nvim'
export PATH=$PATH:~/.cabal/bin
export WALLPAPER='/home/xyz/Pictures/avalon.jpg'
export NVIM_TUI_ENABLE_TRUE_COLOR=1
#export LANG="en_US.UTF-8"

PS1='[\u@\h \W]\$ '

#
[ -f ~/.alias ] && source ~/.alias

# source fzf
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# swap Caps Lock and Control key
setxkbmap -option ctrl:swapcaps

# Base16 Shell
BASE16_SHELL="$HOME/.config/base16-shell/base16-google.dark.sh"
[[ -s $BASE16_SHELL ]] && source $BASE16_SHELL

# colored man pages
man() {
    env LESS_TERMCAP_mb=$'\E[01;31m' \
    LESS_TERMCAP_md=$'\E[01;38;5;74m' \
    LESS_TERMCAP_me=$'\E[0m' \
    LESS_TERMCAP_se=$'\E[0m' \
    LESS_TERMCAP_so=$'\E[38;5;246m' \
    LESS_TERMCAP_ue=$'\E[0m' \
    LESS_TERMCAP_us=$'\E[04;38;5;146m' \
    man "$@"
}

# bash-git-prompt
#source ~/.bash-git-prompt/gitprompt.sh
#GIT_PROMPT_ONLY_IN_REPO=1

# show "archey3" when open a terminal
archey3
