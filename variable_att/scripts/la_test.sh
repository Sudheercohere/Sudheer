#!/usr/bin/expect
set db [lindex $argv 0]
spawn telnet 10.4.10.55
sleep 2

send "\n"
sleep 1

send "help\r"
sleep 1

send "ATTN 5 $db\r"
send "ATTN 6 $db\r"
send "ATTN 7 $db\r"
send "ATTN 8 $db\r"
interact
