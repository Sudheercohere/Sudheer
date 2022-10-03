#!/bin/sh

echo "this script check core dumps L1,L2,CPCC,L3"
echo "********L1 Check up******** "
cd /home/kakarsu/repo4g/flexran/bin/lte/l1
ls -lrt core*;
echo "********CPCC Check up******** "
cd /home/kakarsu/repo4g/CPCC/bin;
ls -lrt core*
cd /home/kakarsu/repo4g/LTE_IPR/bin
echo "*********** L2 Core check Up ***************"
ls -lrt core*
