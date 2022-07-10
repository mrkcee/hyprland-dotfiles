#!/bin/zsh -e

SLEEPTIME="${1:-1}"

while true; do
  muted_state=$(pactl get-sink-mute @DEFAULT_SINK@ | sed "s/Mute: //")

	if [[ $muted_state == "no" ]]; then
	  volume=$(pactl get-sink-volume @DEFAULT_SINK@ | grep % | awk '{print $5}' | sed "s/%//")

    echo "volume|string|$volume"
		echo "muted|bool|false"

  else
		echo "muted|bool|true"
	fi
  
	echo ""
	sleep $SLEEPTIME
done
