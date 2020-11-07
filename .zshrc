			# Enable colors and change prompt:
autoload -U colors && colors	# Load colors

# PROMPT="%B%F{34}%n%f%b %B%F{9}[%f%b%B%F{green}%~%f%b%B%F{9}]%f%b%B%F{40}>%f%b "
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "
RPROMPT="%F{10}%t%f"


# History in cache directory:
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/zsh/history

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

# vi mode
bindkey -v
export KEYTIMEOUT=1

# Change cursor shape for different vi modes.
function zle-keymap-select {
  if [[ ${KEYMAP} == vicmd ]] ||
     [[ $1 = 'block' ]]; then
    echo -ne '\e[1 q'
  elif [[ ${KEYMAP} == main ]] ||
       [[ ${KEYMAP} == viins ]] ||
       [[ ${KEYMAP} = '' ]] ||
       [[ $1 = 'beam' ]]; then
    echo -ne '\e[5 q'
  fi
}
zle -N zle-keymap-select
zle-line-init() {
    zle -K viins # initiate `vi insert` as keymap (can be removed if `bindkey -V` has been set elsewhere)
    echo -ne "\e[5 q"
}
zle -N zle-line-init
echo -ne '\e[5 q' # Use beam shape cursor on startup.
preexec() { echo -ne '\e[5 q' ;} # Use beam shape cursor for each new prompt.

# Alias
alias ls='ls --color=auto'
alias l='clear'
alias la='ls -la'
alias bye='shutdown now'
alias v='nvim'
# Auto-suggestion ( should be last )
source ~/.config/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

source ~/.config/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
neofetch



