#!/usr/bin/expect -f

#PWD=`pwd`

cd /home/kakarsu
#cd $PWD
set timeout -1

spawn ./scripts_lte_21.07/run_cli.sh

expect "OAM_LTE #>"

send -- "Set Cohere_Scheduler  Value 0 0\r"

sleep 1

expect "OAM_LTE #>"

send -- "Exit\r"

interact
