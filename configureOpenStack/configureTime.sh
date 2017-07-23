#!/bin/bash
apt install -y chrony
mv /etc/chrony/chrony.conf /etc/chrony/chrony.conf.bak
sed -r "s/^(server .*)$/#\1/g" /etc/chrony/chrony.conf.bak | sed -r "s/^(pool 2.debian.*)$/#\1/g" >/etc/chrony/chrony.conf
echo "server controller iburst" >>/etc/chrony/chrony.conf
service chrony restart
chronyc -a 'burst 4/4'
sleep 10
chronyc -a 'makestep'
date
