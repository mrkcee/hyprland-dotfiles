#!/bin/zsh -e

active="$(
    hyprctl activewindow \
    | head -n 1 \
    | cut -d ' ' -f 4- \
    | sed 's/.*Invalid.*//g ; s/.$// '
    #| sed 's/.*Invalid.*/No active window /g ; s/.$// ; s/&/&amp;/g'
)"

echo "window|string|$active"
echo ""
