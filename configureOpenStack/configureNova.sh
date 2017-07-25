#!/bin/bash
#apt install -y nova-compute
cp /root/nova.conf /etc/nova/nova.conf
service nova-compute restart
