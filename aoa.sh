cd /home/kakarsu/repo4g/CPCC/bin/;
/home/kakarsu/repo4g/CPCC/test_code/scripts/set_log_level.sh 8
while true 
do
echo "**********************************************************************"
tail -100 cpcc-glue-layer.log | egrep -i "AoA|separation|la|cqi|AUTO"
echo "**********************************************************************"
sleep 5
done
