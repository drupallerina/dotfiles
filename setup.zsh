#!/usr/bin/env zsh

# setup script kindly borrowed from dfm and adjusted for our purposes as alternative to rake to augment fresh

# make bin directory in home if it doesn't already exist
mkdir -p ~/bin

# setup fresh
#git clone https://github.com/freshshell/fresh.git ~/.fresh/source/freshshell/fresh
#ln -s ~/.fresh/build/.freshrc ~/.freshrc
#~/.fresh/source/freshshell/fresh/bin/fresh
FRESH_LOCAL_SOURCE=drupallerina/dotfiles bash <(curl -sL get.freshshell.com)


# setup vundle
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

# setup cheat
pip install git+git://github.com/chrisallenlane/cheat.git

# setup prezto - this is done by fresh
#git clone --recursive https://github.com/sorin-ionescu/prezto.git ~/.zprezto
#setopt EXTENDED_GLOB
#for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
#ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
#done

# Install atom plugins
#apm install --packages-file ~/.dotfiles/config/atom/atom-packages.json

# import terminal profiles
#gconftool-2 --load ~/.fresh/build/gnome-terminal-conf.xml

# switch to zsh
which zsh
chsh -s $(which zsh)

# install xiki
#cd ~/.src/xiki
#gem install bundler
#bundle
#ruby etc/command/copy_xiki_command_to.rb /usr/local/bin/xiki
#cd
