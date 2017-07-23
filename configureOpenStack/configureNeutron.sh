#!/bin/bash
apt install -y neutron-linuxbridge-agent
cp /root/neutron.conf /etc/neutron/neutron.conf
cp /root/linuxbridge_agent.ini /etc/neutron/plugins/ml2/linuxbridge_agent.ini
service nova-compute restart
service neutron-linuxbridge-agent restart
