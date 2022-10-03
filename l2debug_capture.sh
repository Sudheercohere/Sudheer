cd /home/kakarsu/repo4g/LTE_IPR/bin;

echo "input l2 log file name :"
read l2_log
sleep 1
date_d=`date +%y%m%d%H%M%S`
#mkdir -p $Home_Path/Logs/;
#mkdir -p $Home_Path/Logs/"$date_d"_"$Name"/CPCC_Logs/debugFiles;
echo $l2_log\_$date_d\_L2_SK_debug.log
/home/kakarsu/4G_Scripts/logs.sh 0 0
###taskset -c 108 ./cohere_tail_logs > /root/ran301/longivity_run/"$l2_log"_"$date_d"_L2_SK_debug.log
./cohere_tail_logs > /root/ran301/longivity_run/"$l2_log"_"$date_d"_L2_SK_debug.log
