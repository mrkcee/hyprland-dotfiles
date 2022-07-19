#!/bin/zsh -e

##############################
# Autorun - GNOME Keyring 
##############################
if [ -n "$DESKTOP_SESSION" ] || [ -n "$WAYLAND_DISPLAY" ]; then
  eval $(gnome-keyring-daemon --start)
	#export GNOME_KEYRING_CONTROL
  export SSH_AUTH_SOCK
fi

