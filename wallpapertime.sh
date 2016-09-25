#!/usr/bin/env bash

#fill an array with the pictures
declare -A bgs
bgs[0]="$HOME/Pictures/8bitday/0.png"
bgs[1]="$HOME/Pictures/8bitday/1.png"
bgs[2]="$HOME/Pictures/8bitday/2.png"
bgs[3]="$HOME/Pictures/8bitday/3.png"
bgs[4]="$HOME/Pictures/8bitday/4.png"
bgs[5]="$HOME/Pictures/8bitday/5.png"
bgs[6]="$HOME/Pictures/8bitday/6.png"
bgs[7]="$HOME/Pictures/8bitday/7.png"

while true; do
    # set the current hour, drop leading zeros, split day into 8 parts
    hour="$(date +%H)"
    daypart=$((${hour#0}/3))
    
    #set the wallpaper
    feh --bg-max "${bgs[$daypart]}"
    
    #sleep for half an hour
    sleep 1800;
done
