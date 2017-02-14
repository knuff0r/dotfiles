#!/bin/bash

if ps aux | grep "gsimplecal" > /dev/null
then
    gsimplecal & 
else 
    killall gsimplecal
fi
