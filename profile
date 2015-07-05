# /etc/profile
#Typically, ~/.profile contains environment variable definitions, and might start some programs
#that you want to run once when you log in or for the whole session;
#Set our umask
umask 022

# Set our default path
PATH="/usr/local/sbin:/usr/local/bin:/usr/bin"
# if packer exists, add it to path
if [[ -d "$HOME/packer" ]]; then
PATH="/usr/local/sbin:/usr/local/bin:/usr/bin:$HOME/packer"
fi

export PATH

# Load profiles from /etc/profile.d
if test -d /etc/profile.d/; then
	for profile in /etc/profile.d/*.sh; do
		test -r "$profile" && . "$profile"
	done
	unset profile
fi

# Source global bash config
if test "$PS1" && test "$BASH" && test -r /etc/bash.bashrc; then
	. /etc/bash.bashrc
fi

# Termcap is outdated, old, and crusty, kill it.
unset TERMCAP

# Man is much better than us at figuring this out
unset MANPATH
BROWSER=/usr/bin/xdg-open
