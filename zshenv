# Created by ta9mi1shi1

##############################
# Environment variables
##############################

# Tells the shell that it should not add anything to $PATH if it's there already
typeset -U PATH

export EDITOR="vim"
export GOPATH="$HOME/works/go"
export PATH="$HOME/.local/bin:$GOPATH/bin:$(ruby -e 'print Gem.user_dir')/bin:/usr/bin/core_perl/:$PATH"
export FZF_DEFAULT_OPTS='--color=fg:#D8DEE9,hl:#A3BE8C,fg+:#D8DEE9,bg+:#434C5E,hl+:#A3BE8C --color=pointer:#BF616A,info:#4C566A,spinner:#4C566A,header:#4C566A,prompt:#81A1C1,marker:#EBCB8B --no-height --reverse'

systemctl --user import-environment GOPATH
systemctl --user import-environment PATH
