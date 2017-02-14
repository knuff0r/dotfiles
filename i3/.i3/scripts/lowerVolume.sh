#! /bin/bash
if mpc -h pi | grep "playing" ; then 
    mpc -h pi volume -1
else 
    amixer set Master 1- unmute
fi
pkill -RTMIN+1 i3blocks

