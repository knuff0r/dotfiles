#!/usr/bin/env python3
import subprocess
out = subprocess.check_output(["sudo", "pvpn", "status"]).decode("utf-8")
out=out.splitlines()[1]
running = out.split(':')[1]
is_running = running == " Running"
color="FCEDC2"
if is_running:
    color="B4FAB6"

print("%{{F#{}}}%{{T4}}  {} %{{T-}}%{{F-}}".format(color, out))

