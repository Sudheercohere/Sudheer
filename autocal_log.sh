date_d=`date +%y%m%d%H%M%S`
echo Autocal_Logs_"$date_d".log
mkdir -p /home/kakarsu/Logs/AutoCalLogs
touch /home/kakarsu/Logs/AutoCalLogs/Autocal_Logs_"$date_d".log
sleep 2
cd /home/kakarsu/repo4g/CPCC/bin;
/home/kakarsu/repo4g/CPCC/test_code/scripts/set_log_level.sh 8
#sudo ./cpcc_tail_logs | egrep -i "AUTOCAL|auto_cal" | tee /home/kakarsu/Logs/AutoCalLogs/Autocal_Logs_"$date_d".log
sudo ./cpcc_tail_logs | tee /home/kakarsu/Logs/AutoCalLogs/Autocal_Logs_"$date_d".log | egrep -i "AUTOCAL|auto_cal"
