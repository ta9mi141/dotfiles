# Created by ta9mi1shi1

##############################
# Environment variables
##############################

# Tells the shell that it should not add anything to $PATH if it's there already
typeset -U PATH

export EDITOR="vim"
export GOPATH="$HOME/works/go"
export PATH="$HOME/.local/bin:$GOPATH/bin:$(ruby -e 'print Gem.user_dir')/bin:/usr/bin/core_perl/:$PATH"
export FZF_DEFAULT_OPTS='--color=dark --color=fg:-1,bg:-1,hl:#5fff87,fg+:-1,bg+:-1,hl+:#ffaf5f --color=info:#af87ff,prompt:#5fff87,pointer:#ff87d7,marker:#ff87d7,spinner:#ff87d7 --no-height --reverse' # Dracula

systemctl --user import-environment GOPATH
systemctl --user import-environment PATH
