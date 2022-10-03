cd /home/kakarsu/scripts_lte_21.07;
sleep 2;pwd;
echo "reset autocall "
./reset_ac.sh 1
sleep 2 
echo "start auto call "
pwd
./start_ac.sh 0 temp
