#!/bin/bash

L2_LOG=$1
CPCC_LOG=$2

sudo touch /tmp/l2_log_level
sudo chmod 777 /tmp/l2_log_level
sudo printf "0: %.2x" $L2_LOG | xxd -r -g0 | dd of=/tmp/l2_log_level bs=1 count=1 conv=notrunc

/home/kakarsu/repo4g/CPCC/test_code/scripts/set_log_level.sh $CPCC_LOG
