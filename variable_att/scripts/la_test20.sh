#!/usr/bin/expect

spawn telnet 10.4.10.55
#interact
sleep 2

send "\n"
sleep 1

send "help\r"
sleep 1

send "ATTN 9 2\r"
send "ATTN 10 2\r"
send "ATTN 11 2\r"
send "ATTN 12 2\r"
sleep 5

send "ATTN 9 4\r"
send "ATTN 10 4\r"
send "ATTN 11 4\r"
send "ATTN 12 4\r"
sleep 5

send "ATTN 9 6\r"
send "ATTN 10 6\r"
send "ATTN 11 6\r"
send "ATTN 12 6\r"
sleep 5

send "ATTN 9 8\r"
send "ATTN 10 8\r"
send "ATTN 11 8\r"
send "ATTN 12 8\r"
sleep 5

send "ATTN 9 9\r"
send "ATTN 10 9\r"
send "ATTN 11 9\r"
send "ATTN 12 9\r"
sleep 5

send "ATTN 9 10\r"
send "ATTN 10 10\r"
send "ATTN 11 10\r"
send "ATTN 12 10\r"
sleep 5

send "ATTN 9 12\r"
send "ATTN 10 12\r"
send "ATTN 11 12\r"
send "ATTN 12 12\r"
sleep 5

send "ATTN 9 14\r"
send "ATTN 10 14\r"
send "ATTN 11 14\r"
send "ATTN 12 14\r"
sleep 5

send "ATTN 9 17\r"
send "ATTN 10 17\r"
send "ATTN 11 17\r"
send "ATTN 12 17\r"
sleep 5

send "ATTN 9 20\r"
send "ATTN 10 20\r"
send "ATTN 11 20\r"
send "ATTN 12 18\r"
sleep 5


send "ATTN 9 17\r"
send "ATTN 10 17\r"
send "ATTN 11 17\r"
send "ATTN 12 17\r"
sleep 5

send "ATTN 9 14\r"
send "ATTN 10 14\r"
send "ATTN 11 14\r"
send "ATTN 12 14\r"
sleep 5

send "ATTN 9 12\r"
send "ATTN 10 12\r"
send "ATTN 11 12\r"
send "ATTN 12 12\r"
sleep 5

send "ATTN 9 10\r"
send "ATTN 10 10\r"
send "ATTN 11 10\r"
send "ATTN 12 10\r"
sleep 5

send "ATTN 9 8\r"
send "ATTN 10 8\r"
send "ATTN 11 8\r"
send "ATTN 12 8\r"
sleep 5

send "ATTN 9 6\r"
send "ATTN 10 6\r"
send "ATTN 11 6\r"
send "ATTN 12 6\r"
sleep 5

send "ATTN 9 4\r"
send "ATTN 10 4\r"
send "ATTN 11 4\r"
send "ATTN 12 4\r"
sleep 5

send "ATTN 9 2\r"
send "ATTN 10 2\r"
send "ATTN 11 2\r"
send "ATTN 12 2\r"
sleep 5


send "quit\r"
interact
