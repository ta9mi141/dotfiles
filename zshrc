# Created by it_akumi for 5.0.7

##############################
# Keybinding
##############################

bindkey -v
zmodload zsh/complist
bindkey -M viins '^A' beginning-of-line
bindkey -M viins '^N' down-line-or-history
bindkey -M viins '^P' up-line-or-history
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char

##############################
# History
##############################

HISTFILE="$HOME/.zsh_history"
HISTSIZE=500000 # The number of histories saved to memory
SAVEHIST=500000 # The number of histories saved to HISTFILE
setopt extended_history # Save history with timestamp (UNIX time) and execution time
setopt hist_ignore_dups
setopt inc_append_history
setopt share_history # Share history with other terminals

function peco-history-incremental-search {
    BUFFER=`history -nr 1 | awk '!a[$0]++' | peco`
    CURSOR=$#BUFFER
    zle accept-line
    zle redisplay
}
zle -N peco-history-incremental-search
bindkey -M viins '^R' peco-history-incremental-search

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
alias e='emacsclient -c'
alias en='emacsclient -nw'
alias ekill='emacsclient -e "(kill-emacs)"'
alias k='kubectl'
alias ksec='kubesec'

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

# Print basic system information
if [ -e /etc/arch-release ]; then
    archey3
fi
