#!/bin/bash
host=$1
hostIP=$(grep -E "$host" /etc/hosts | awk '{print $1}')
echo $hostIP
sed -e "s/IP_PlaceHolder/$hostIP/g" ./nova.conf.template >nova.conf
scp ./nova.conf root@$host:
./configureHostExpect.sh $host ./configureNova.sh
