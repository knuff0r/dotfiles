#!/bin/bash
if [ ! -f /var/run/rsnapshot.pid ]
then
	systemctl suspend
else
    notify-send 'Error' 'Backup running...' --icon=dialog-information
fi
