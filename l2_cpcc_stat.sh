#date_d=`date +%y%m%d%H%M%S`
#tail -f  /tmp/cpcc_stats.txt | tee /home/kakarsu/repo4g/CPCC/bin/cpccstat.log
#watch -n1 -d 'cat /tmp/cohere_l2_stats.txt'
#watch -n1 -d 'cat /tmp/cpcc_stats.txt'
watch -n1  'echo -e "   ****************L2 Stats ************************** \n ";cat /tmp/cohere_l2_stats.txt ;echo -e "  ****************CPCC************************** \n " ;cat /tmp/cpcc_stats.txt'
