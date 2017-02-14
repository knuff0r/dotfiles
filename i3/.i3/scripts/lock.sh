#!/usr/bin/env bash

icon="$HOME/Pictures/lock_icon.png"
tmpbg='/tmp/screen.png'

(( $# )) && { icon=$1; }

scrot "$tmpbg"
#pixalet
convert "$tmpbg" -scale 10% -scale 1000% "$tmpbg"
#blur
#convert "$tmpbg" -blur 0x12 "$tmpbg"
convert "$tmpbg" "$icon" -gravity West -geometry +832 -composite -matte "$tmpbg"
convert "$tmpbg" "$icon" -gravity East -geometry +832 -composite -matte "$tmpbg"









i3lock -u -d -i "$tmpbg"
