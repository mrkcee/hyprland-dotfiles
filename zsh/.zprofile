if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
  clear
  #exec startx
  #exec river
	Hyprland
fi
