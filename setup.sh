#!/bin/zsh
set -e


# Copy configs directly under $HOME
for conf in $HOME/dotfiles/*(^*/); do
    ln -sf $conf $HOME/.$(basename $conf)
done


# Copy directories under $HOME/.config
for conf in $HOME/dotfiles/config/*; do
    if [ ! -e $HOME/.config/$(basename $conf) ]; then
        ln -sf $conf/ $HOME/.config/$(basename $conf)
    fi
done
