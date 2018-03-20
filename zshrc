# Created by it_akumi for 5.0.7

##############################
# Keybinding
##############################

export EDITOR="vim"
bindkey -v
zmodload zsh/complist
bindkey -M viins '^N' down-line-or-history
bindkey -M viins '^P' up-line-or-history
bindkey -M viins '^R' history-incremental-search-backward
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char

##############################
# History
##############################

HISTFILE="$HOME/.zsh_history"
HISTSIZE=10000 # The number of histories saved to memory
SAVEHIST=10000 # The number of histories saved to HISTFILE
setopt extended_history # Save history with timestamp (UNIX time) and execution time
setopt hist_ignore_dups
setopt sharehistory # Share history with other terminals

##############################
# Prompt
##############################

PROMPT='%F{yellow}%n%f@%F{cyan}%m%f:$ '
RPROMPT='%F{white}%d%f'

##############################
# Alias
##############################

alias ls='ls --color=auto'
alias la='ls -a'
alias ll='ls -l'
alias lcf='ls -CF'
alias mv='mv -i'
alias cp='cp -i'
alias rm='rm -i'
alias irb='irb --simple-prompt'
alias e='emacsclient -nw'
alias ekill='emacsclient -eval "(kill-emacs)"'

##############################
# Completion
##############################

autoload -U compinit; compinit
zstyle ':completion:*:default' menu select=1

##############################
# Options
##############################

setopt correct # Correct command spelling
setopt auto_cd # If input command doesn't exist and matches a name of directory, cd the directory
setopt auto_pushd # Use directory stack
setopt pushd_ignore_dups

##############################
# Others
##############################

# Connect to wireless network manually
# sudo wpa_supplicant -B -c /etc/wpa_supplicant/network_of_it_akumi.conf -i wlp3s0

# Display basic system info
if [ -e /etc/arch-release ]; then
    archey3
fi

# Anyenv config
if [ -d $HOME/.anyenv ] ; then
    export PATH="$HOME/.anyenv/bin:$PATH"
    eval "$(anyenv init -)"
fi

# Config of Go
export GOPATH="$HOME/go"
export PATH="$GOPATH/bin:$PATH"

# Use capslock as ctrl
setxkbmap -option ctrl:nocaps

# Locale
export LANG="ja_JP.UTF-8"

# 256 colors setup for console Vim
export TERM=xterm-256color
