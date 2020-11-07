#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias l='clear'
alias la='ls -la'
alias bye='shutdown now'
# PS1='[\u@\h \W]\$ '
export PS1="\[$(tput bold)\]\[\033[38;5;34m\]\u\[$(tput sgr0)\] \[$(tput sgr0)\]\[\033[38;5;12m\]>\[$(tput sgr0)\] \[$(tput sgr0)\]\[$(tput bold)\]\[\033[38;5;1m\][\[$(tput sgr0)\]\[\033[38;5;63m\]\w\[$(tput sgr0)\]\[$(tput bold)\]\[\033[38;5;1m\]]\[$(tput sgr0)\]\\$ \[$(tput sgr0)\]"
neofetch
