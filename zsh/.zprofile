if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
  clear
  #exec startx
  #exec river
	~/.config/common_scripts/start_wm
  #exec Hyprland
  #exec dbus-launch --exit-with-session sway
fi
