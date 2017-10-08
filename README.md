dotfiles
========

These are my dotfiles managed using fresh.

## Dependencies
zsh https://wiki.archlinux.org/index.php/zsh
## Installation

```
wget https://raw.githubusercontent.com/drupallerina/dotfiles/master/setup.zsh
chmod +x setup.zsh
./setup.zsh
```

Running the setup will switch your default shell to zsh (you will have to log out and back in)

## Install atom plugins
This will setup atom packages from apm.list (running setup.zsh will do that for you on intial install. You can run this after updating/adapting your list, but it currently doesn't run after fresh updating.)

```
apm install --packages-file ~/.config/friendlyarch/defaults/apm.list
```
