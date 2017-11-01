#!/usr/bin/env bash

icon="/home/jps/Pictures/head.png"
tmpbg='/tmp/screen.png'

(( $# )) && { icon=$1; }

scrot "$tmpbg"
convert "$tmpbg" -scale 10% -scale 1000% "$tmpbg"
convert "$tmpbg" "$icon" -gravity east -geometry +740+0 -composite -matte "$tmpbg"
i3lock -u -i "$tmpbg"
