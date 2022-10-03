#! /bin/sh

echo -n "Enter Name to save logs:"
read Name
echo -n "Enter Path of Repo4G:"
read Repo_Path
echo -n "Enter Home Path to Store Logs:"
read Home_Path
date_d=`date +%y%m%d%H%M%S`
cd /tmp;
##ls *.clog;
mkdir -p $Home_Path/Logs/;
mkdir -p /home/kakarsu/Logs/"$date_d"_"$Name"/CPCC_Logs/debugFiles;
mkdir -p /home/kakarsu/Logs/"$date_d"_"$Name"/L2_L3_RRM_Logs_Core;
mkdir -p /home/kakarsu/Logs/"$date_d"_"$Name"/L1_Logs_Core;
cp /tmp/*.clog /home/kakarsu/Logs/"$date_d"_"$Name";
##ls -lrt /home/kakarsu/"$date_d"_"$Name";
#echo -e "######copy console logs finished ######\n\n"
 
#echo -e "========cpcc logs======\n"
cd /home/kakarsu/cpcc;
cp *.log /home/kakarsu/Logs/"$date_d"_"$Name"/CPCC_Logs;
cp core* /home/kakarsu/Logs/"$date_d"_"$Name"/CPCC_Logs;
cd debugFiles;
cp * /home/kakarsu/Logs/"$date_d"_"$Name"/CPCC_Logs/debugFiles;
##ls -lrt /home/kakarsu/"$date_d"_"$Name"/CPCC_Logs/* 


##echo -e "%%%%%%%%% L2,rrm_Logs %%%%%%\n"
cd /home/kakarsu/l2_l3_rrm;
cp *.log /home/kakarsu/Logs/"$date_d"_"$Name"/L2_L3_RRM_Logs_Core;
cp core* /home/kakarsu/Logs/"$date_d"_"$Name"/L2_L3_RRM_Logs_Core;

##echo -e "***** L1 logs **********\n\n"
cd /home/kakarsu/l1;
cp core* /home/kakarsu/Logs/"$date_d"_"$Name"/L1_Logs_Core;
cp *.log /home/kakarsu/Logs/"$date_d"_"$Name"/L1_Logs_Core; 
#ls -lrt /home/kakarsu/"$date_d"_"$Name"/L1_Logs_Core;
###echo -e "*********************^^^^ Final Logs ^^^^^^************************\n\n"
echo "************************************************"
echo -e "***Logs Path :/home/kakarsu/Logs/" 
echo "***********************************************\n"
#ls -lrt /home/kakarsu/Logs/"$date_d"_"$Name"/*;
cd /home/kakarsu/Logs/
tar -cvf "$date_d"_"$Name".tar "$date_d"_"$Name" > /dev/null 2>&1;
ls -lrt /home/kakarsu/Logs/"$date_d"_"$Name".tar 
