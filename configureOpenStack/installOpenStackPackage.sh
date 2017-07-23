#!/bin/bash
 apt install -y software-properties-common
 add-apt-repository -y cloud-archive:newton
 apt update && apt dist-upgrade -y
 apt install -y python-openstackclient
