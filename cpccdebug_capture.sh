cd /home/kakarsu/repo4g/CPCC/bin;
echo "Input CPCC log file name :"
read cpcc_log
sleep 1
date_d=`date +%y%m%d%H%M%S`
echo $cpcc_log\_$date_d\_CPCC_sk_debug.log
#tail -f cpcc-glue-layer.log > /root/ran301/longivity_run/"$cpcc_log"_"$date_d"_cpcc_sk_debug.log
sudo ./cpcc_tail_logs > /root/ran301/longivity_run/"$cpcc_log"_"$date_d"_CPCC_sk_debug.log
