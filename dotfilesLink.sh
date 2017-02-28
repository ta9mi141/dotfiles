#!/bin/sh
ln -si $HOME/dotfiles/asoundrc $HOME/.asoundrc
ln -si $HOME/dotfiles/fehbg $HOME/.fehbg
ln -si $HOME/dotfiles/gitconfig $HOME/.gitconfig
ln -si $HOME/dotfiles/vimrc $HOME/.vimrc
ln -si $HOME/dotfiles/xinitrc $HOME/.xinitrc
ln -si $HOME/dotfiles/zshrc $HOME/.zshrc
ln -si $HOME/dotfiles/xmobarrc $HOME/.xmobarrc
ln -si $HOME/dotfiles/stalonetrayrc $HOME/.stalonetrayrc
ln -si $HOME/dotfiles/xscreensaver $HOME/.xscreensaver
ln -si $HOME/dotfiles/spacemacs $HOME/.spacemacs

if [ ! -e $HOME/.xmonad ]; then
    mkdir $HOME/.xmonad
    ln -si $HOME/dotfiles/xmonad.hs $HOME/.xmonad/xmonad.hs
fi

if [ ! -e $HOME/.config/nvim ]; then
    ln -si $HOME/dotfiles/nvim/ $HOME/.config/nvim
fi

if [ ! -e $HOME/.config/terminator ]; then
    ln -si $HOME/dotfiles/terminator/ $HOME/.config/terminator
fi
