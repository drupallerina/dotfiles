#!/usr/bin/env zsh

# setup script kindly borrowed from dfm and adjusted for our purposes as alternative to rake to augment fresh

# make bin directory in home if it doesn't already exist
[ ! -d $HOME/bin ] && mkdir -p $HOME/bin
# make terminator config direcotry if it doesn't already exist
[ ! -d $HOME/.config/terminator ] && mkdir -p $HOME/.config/terminator

# setup fresh
#git clone https://github.com/freshshell/fresh.git ~/.fresh/source/freshshell/fresh
#ln -s ~/.fresh/build/.freshrc ~/.freshrc
#~/.fresh/source/freshshell/fresh/bin/fresh
FRESH_LOCAL_SOURCE=drupallerina/dotfiles bash <(curl -sL get.freshshell.com)

# Install atom plugins
apm install --packages-file ~/.config/friendlyarch/defaults/apm.list

# switch to zsh
which zsh
chsh -s $(which zsh)
