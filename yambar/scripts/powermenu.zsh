#!/bin/zsh

selection=$(dialog --stdout --title "Power Menu" --menu "Choose one: " 0 0 3 1 lock 2 reboot 3 shutdown)

if [[ "$?" != "0" ]]; then
else
  case $selection in
		1 )
			notify-send --urgency=normal "System" "Screen lock not implemented." --icon=void-logo-notext
			;;
		2 )
			notify-send --urgency=normal "System" "Reboot initiated." --icon=void-logo-notext
			loginctl reboot
			;;
		3 )
			notify-send --urgency=normal "System" "Shutdown initiated." --icon=void-logo-notext
			loginctl poweroff
			;;
	esac
fi

clear
