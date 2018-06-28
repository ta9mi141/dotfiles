# Created by it_akumi

##############################
# Environment variables
##############################

export EDITOR="vim"
export GOPATH="$HOME/works/go"
# Tells the shell that it should not add anything to $PATH if it's there already
typeset -U PATH
export PATH="/usr/local/go/bin:$GOPATH/bin:$PATH"
