echo -n "Enter Name to save logs:"
read file
cd /home/kakarsu/repo4g/CPCC/bin/;
sleep 1
date_d=`date +%y%m%d%H%M%S`
/home/kakarsu/repo4g/CPCC/test_code/scripts/set_log_level.sh 8
sleep 2;
pwd;
echo "cpcc losg started"
sudo ./cpcc_tail_logs | tee /mnt/syseng/RAN301/longivity_run/"$file"_CPCC_debug_"$date_d".log
