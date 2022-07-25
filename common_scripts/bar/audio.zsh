#!/bin/zsh

SLEEPTIME="${1:-1}"

while true; do
  
	if ! wpctl get-volume @DEFAULT_AUDIO_SINK@ | grep -q MUTED; then
	  volume=$(wpctl get-volume @DEFAULT_AUDIO_SINK@ | sed 's/Volume: //')
		((volume = $volume * 100))
    volume=${volume%.*}

    echo "volume|string|$volume"
		echo "muted|bool|false"

  else
		echo "muted|bool|true"
	fi
  
	echo ""
	sleep $SLEEPTIME
done
