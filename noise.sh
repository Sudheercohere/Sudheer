date
echo "*****************************"
cd /tmp;
echo "****enable_dl_noise_insertion"
od -d enable_dl_noise_insertion;
echo "*****dl_noise_insertion_level_dB";
od -d dl_noise_insertion_level_dB;
echo "****checking custom_sch_status"
od -d /tmp/enable_custom_scheduling
echo "****cpcc***"
cd /home/kakarsu/repo4g/CPCC/bin;
cat custom_schedule.json
echo "***********CPCC***********"
