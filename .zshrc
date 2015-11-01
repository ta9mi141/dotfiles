# Created by it_akumi for 5.0.7

# swap ctrl and capslock
setxkbmap -option ctrl:swapcaps

# set wireless network connection (Now using wicd and connect automatically)
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

# set prompt
PROMPT='%F{yellow}%n%f@%F{cyan}%m%f:$ '
RPROMPT='%F{white}%d'

# configuration of rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"


# configuration of pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# set default editor
export EDITOR="vim"

# useful functions of zsh
setopt correct
autoload -U compinit
compinit
