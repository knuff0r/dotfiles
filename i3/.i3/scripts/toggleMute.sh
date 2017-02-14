#! /bin/bash
if mpc -h pi | grep -q "playing" ; then 
    if [ "$(mpc -h pi volume)" == "volume:  0%" ]; then
        mpc -h pi volume $(cat /home/sebastian/tmp/old_volume)
    else 
        volume=$(mpc -h pi volume)
        volume=${volume%?}
        volume=${volume:7}
        echo "$volume" > /home/sebastian/tmp/old_volume
        mpc -h pi volume 0
    fi

else 
    amixer -q set Master toggle
    amixer -q -c 2 set PCM toggle
fi

