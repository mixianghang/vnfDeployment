#!/usr/bin/expect -f
set timeout 600
set host [lindex $argv 0]
set scriptfile [lindex $argv 1]
spawn scp -o "StrictHostKeyChecking no"  $scriptfile root@$host:
spawn ssh -o "StrictHostKeyChecking no" root@$host
expect "# "
send "chmod +x $scriptfile\r"
expect "# "
send "./$scriptfile\r"
expect "# "
send "logout\r"
