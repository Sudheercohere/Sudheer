echo -n "Enter name to save logs ::"
read files
cd /home/kakarsu/repo4g/LTE_IPR/bin;
sleep 1
date_d=`date +%y%m%d%H%M%S`
sleep 2 
/home/kakarsu/repo4g/LTE_IPR/lteenodeb/set_l2_log_level.sh 0
pwd;sleep 2;
sudo ./cohere_tail_logs | tee /mnt/syseng/RAN301/longivity_run/"$files"_L2_debug_"$date_d".log
#sudo ./cohere_tail_logs | tee /tmp/L2_debug_$date_d.log
