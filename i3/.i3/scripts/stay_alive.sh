#!/bin/bash
while :;
do
val="$( cat /proc/asound/card*/pcm*/sub*/status | grep -c 'state: RUNNING' )"
if [ $val -eq 1 ] 
then
   echo "music"
   xautolock -disable
   xset -dpms
   xset s off
else
   echo "no music"
   xautolock -enable
   xset +dpms
   xset s on
fi; sleep 10; done
