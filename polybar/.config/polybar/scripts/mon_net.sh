#!/bin/bash
mkdir -p ~/.mon_net
rx=`ifconfig | grep RX | grep bytes | awk 'NR==1{print $5}'`
now=`date +%s`
last=`tail -n1 ~/.mon_net/rx.log | awk '{print $1}'`
rx_last=`tail -n1 ~/.mon_net/rx.log | awk '{print $2}'`
dt=$((now-last))
drx=$((rx-rx_last))
phi=$((drx / dt))
phi_kbs=$((phi * 8/ 1000000))
echo $phi_kbs Mbit/s
echo $now $rx>~/.mon_net/rx.log


