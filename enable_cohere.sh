#!/usr/bin/expect -f

#PWD=`pwd`

cd /home/kakarsu;
#cd $PWD
cd /home/kakarsu/4G_Scripts;
set timeout -1

spawn ./run_cli.sh

expect "OAM_LTE #>"

send -- "Set Cohere_Scheduler  Value 1 0\r"

sleep 1

expect "OAM_LTE #>"

send -- "Exit\r"

interact
