#!/bin/bash
if [ ! -f /var/run/rsnapshot.pid ]
then
	systemctl suspend
fi
