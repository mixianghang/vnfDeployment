#!/usr/bin/expect -f
set 1 [lindex $argv 0]
spawn scp -o  "StrictHostKeyChecking no" /Users/xianghangmi/.ssh/serverAtt.pub xmi@$1: 
expect "password: "
send "tangmi911\r"

spawn ssh -o  "StrictHostKeyChecking no" xmi@$1
expect "password: "
send "tangmi911\r"
expect "$ "
send "sudo su\r"
expect "password for xmi: "
send "tangmi911\r"
expect "# "
send "mkdir /root/.ssh\r"
send "cat ./serverAtt.pub >> /root/.ssh/authorized_keys\r"
expect "# "
send "exit\r"
expect "$ "
send "logout\r"


