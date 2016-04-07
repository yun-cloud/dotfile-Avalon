#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#export TERM=xterm-256color
export EDITOR='nvim'
export PATH=$PATH:~/.cabal/bin
export WALLPAPER='/home/xyz/Pictures/avalon.jpg'
export NVIM_TUI_ENABLE_TRUE_COLOR=1
#export LANG="en_US.UTF-8"

PS1='[\u@\h \W]\$ '

alias ls='ls --color=always'
alias grep='grep --color=always'
alias rm='rm -i'
alias mv='mv -i'

alias ed='$EDITOR'

alias nvimcfg='ed ~/.config/nvim/init.vim'
alias updatefzf='cd ~/.fzf && git pull && ./install'

alias dev='cd ~/Programs/'
alias devc='cd ~/Programs/C/'
alias devv='cd ~/Programs/Verilog'
alias devp='cd ~/Programs/Python'
alias devh='cd ~/Programs/Haskell'

alias dld='ssh -X dld100@nthucad.cs.nthu.edu.tw'
alias fehbg='feh --bg-scale $WALLPAPER'
alias shared='sudo mount -t vboxsf Avalon Windows'

alias gs='git status'
alias ga='git add'
alias gb='git branch'
alias gc='git commit'
alias gd='git diff'
alias go='git checkout'
alias gl='git log --oneline --color=always | sed -n 1,15p | tac'

# source fzf
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# swap Caps Lock and Control key
setxkbmap -option ctrl:swapcaps

# Base16 Shell
BASE16_SHELL="$HOME/.config/base16-shell/base16-google.dark.sh"
[[ -s $BASE16_SHELL ]] && source $BASE16_SHELL
