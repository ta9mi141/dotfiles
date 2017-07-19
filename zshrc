# Created by it_akumi for 5.0.7

# swap ctrl and capslock
setxkbmap -option ctrl:nocaps

# set locale
export LANG="ja_JP.UTF-8"

# set wireless network connection (Now use wicd and connect automatically)
# sudo wpa_supplicant -B -c /etc/wpa_supplicant/network_of_it_akumi.conf -i wlp3s0

# set alias
alias ls='ls --color=auto'
alias la='ls -a'
alias ll='ls -l'
alias l='ls -CF'
alias mv='mv -i'
alias cp='cp -i'
alias rm='rm -i'
alias irb='irb --simple-prompt'
alias e='emacsclient -nw'
alias ekill='emacsclient -eval "(kill-emacs)"'

# Add aliases if nvim is installed
if [ -e /usr/bin/nvim ] ; then
    alias vi='nvim'
    alias vim='nvim'
fi

# set prompt
PROMPT='%F{yellow}%n%f@%F{cyan}%m%f:$ '
RPROMPT='%F{white}%d'

# configuration of anyenv
if [ -d $HOME/.anyenv ] ; then
    export PATH="$HOME/.anyenv/bin:$PATH"
    eval "$(anyenv init -)"
fi

# set default editor
export EDITOR="vim"

# useful functions of zsh
setopt correct
autoload -U compinit
compinit

# start archey3
archey3

# 256 colors setup for console Vim
export TERM=xterm-256color
