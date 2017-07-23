#!/bin/bash
host=$1
hostIP=$(grep -E "$host" /etc/hosts | awk '{print $1}')
echo $hostIP
cp ./neutron.conf.template ./neutron.conf
sed -e "s/IP_PlaceHolder/$hostIP/g" ./linuxbridge_agent.ini.template >linuxbridge_agent.ini
scp ./neutron.conf ./linuxbridge_agent.ini root@$host:
./configureHostExpect.sh $host ./configureNeutron.sh
