#!/bin/bash
num=$(ls -l ~/Pictures/Wallpaper/left/ | wc -l)
((num--))
rnd=$(shuf -i 1-$num -n 1)
feh --bg-scale ~/Wallpaper/left/$rnd.jpg --bg-scale ~/Wallpaper/right/$rnd.jpg
