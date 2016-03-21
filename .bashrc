#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export PATH=$PATH:~/.cabal/bin
export WALLPAPER='/home/xyz/Pictures/avalon.jpg'

PS1='[\u@\h \W]\$ '

alias ls='ls --color=auto'
alias vi='nvim'
alias vim='nvim'
alias fehbg='feh --bg-scale $WALLPAPER'
alias gs='git status'
alias ga='git add'
alias gb='git branch'
alias gc='git commit'
alias gd='git diff'
alias go='git checkout'

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
