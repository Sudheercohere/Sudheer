#! /bin/sh
Home_Path=/home/kakarsu
Repo_Path=/home/kakarsu/repo4g
cpcc=$Repo_Path/CPCC/bin
l2_l3_rrm=$Repo_Path/LTE_IPR/bin
l1=$Repo_Path/flexran/bin/lte/l1
cfg=$Repo_Path/LTE_IPR/cfg

echo -n "Enter Name to save logs:"
read date_d
#read Name


#echo -n "Enter Path of Repo4G:"
#read Repo_Path
#echo -n "Enter Home Path to Store Logs:"
#read Home_Path


Name=`date +%y%m%d%H%M%S`
cd /tmp;
##ls *.clog;
mkdir -p $Home_Path/Logs/;
mkdir -p $Home_Path/Logs/"$date_d"_"$Name"/CPCC_Logs/debugFiles;
mkdir -p $Home_Path/Logs/"$date_d"_"$Name"/L2_L3_RRM_Logs_Core;
mkdir -p $Home_Path/Logs/"$date_d"_"$Name"/L1_Logs_Core;
mkdir -p $Home_Path/Logs/"$date_d"_"$Name"/CFG_files;
cp -p /tmp/*.clog $Home_Path/Logs/"$date_d"_"$Name";


##ls -lrt $Home_Path"$date_d"_"$Name";
#echo -e "######copy console logs finished ######\n\n"

#echo -e "========cpcc logs======\n"
cd $cpcc;
git log > git_cpcc_log.log
cp -p *.log $Home_Path/Logs/"$date_d"_"$Name"/CPCC_Logs;
cp -p core* $Home_Path/Logs/"$date_d"_"$Name"/CPCC_Logs;
cp -p cpcc $Home_Path/Logs/"$date_d"_"$Name"/CPCC_Logs;
cp -p cpcc_read_logs $Home_Path/Logs/"$date_d"_"$Name"/CPCC_Logs;
cp -p cpcc_circular_log $Home_Path/Logs/"$date_d"_"$Name"/CPCC_Logs;
cp -p cpcc_tail_logs $Home_Path/Logs/"$date_d"_"$Name"/CPCC_Logs;
cp -p log_idx $Home_Path/Logs/"$date_d"_"$Name"/CPCC_Logs;
cp -p /tmp/cpcc_stats.txt $Home_Path/Logs/"$date_d"_"$Name"/CPCC_Logs;
cp -p cpccstats_all.log $Home_Path/Logs/"$date_d"_"$Name"/CPCC_Logs;

cd debugFiles;
cp -p * $Home_Path/Logs/"$date_d"_"$Name"/CPCC_Logs/debugFiles;
mkdir -p $cpcc/old_core_files
cd $cpcc
mv -u core.* old_core_files

##ls -lrt $Home_Path/"$date_d"_"$Name"/CPCC_Logs/*


##echo -e "%%%%%%%%% L2,rrm_Logs %%%%%%\n"
cd $l2_l3_rrm;
git log > git_l2_l3_rrm_log.log
cp -p *.log $Home_Path/Logs/"$date_d"_"$Name"/L2_L3_RRM_Logs_Core;
cp -p core* $Home_Path/Logs/"$date_d"_"$Name"/L2_L3_RRM_Logs_Core;
cp -p lteLayer2 $Home_Path/Logs/"$date_d"_"$Name"/L2_L3_RRM_Logs_Core;
cp -p cohere_circular_log $Home_Path/Logs/"$date_d"_"$Name"/L2_L3_RRM_Logs_Core;
cp -p cohere_read_logs $Home_Path/Logs/"$date_d"_"$Name"/L2_L3_RRM_Logs_Core;
cp -p cohere_tail_logs $Home_Path/Logs/"$date_d"_"$Name"/L2_L3_RRM_Logs_Core;
cp -p log_idx $Home_Path/Logs/"$date_d"_"$Name"/L2_L3_RRM_Logs_Core;
cp -p /tmp/cohere_l2_stats.txt $Home_Path/Logs/"$date_d"_"$Name"/L2_L3_RRM_Logs_Core;
cp -p cohere_l2stats_all.log $Home_Path/Logs/"$date_d"_"$Name"/L2_L3_RRM_Logs_Core;

mkdir -p $l2_l3_rrm/old_core_files_l2_l3_rrm
mv -u core.* /old_core_files_l2_l3_rrm

##echo -e "***** L1 logs **********\n\n"
cd $l1;
git log > git_l1.log
cp -p core* $Home_Path/Logs/"$date_d"_"$Name"/L1_Logs_Core;
cp -p *.log $Home_Path/Logs/"$date_d"_"$Name"/L1_Logs_Core;
cp -p l1app $Home_Path/Logs/"$date_d"_"$Name"/L1_Logs_Core;
mkdir -p $l1/old_core_files_l1
cd $l1
mv -u core.* old_core_files_l1

### echo -e "************ cfg file  ******** \n\n"
cd $cfg 
cp -p Proprietary_eNodeB_Data_Model.xml $Home_Path/Logs/"$date_d"_"$Name"/CFG_files;
cp -p eNodeB_Data_Model_TR_196_based.xml $Home_Path/Logs/"$date_d"_"$Name"/CFG_files;
cp -p eNodeB_Configuration.cfg $Home_Path/Logs/"$date_d"_"$Name"/CFG_files;


#ls -lrt $Home_Path/"$date_d"_"$Name"/L1_Logs_Core;
###echo -e "*********************^^^^ Final Logs ^^^^^^************************\n\n"
cd $Home_Path/Logs/
#tar -cvf "$date_d"_"$Name".tar "$date_d"_"$Name" > /dev/null
echo    "************************************************"
echo -e "******Logs Path :$Home_Path/Logs/"$date_d"_"$Name""
##echo -e "******Logs Path :$Home_Path/Logs/"$date_d"_"$Name".tar"
echo -e "***********************************************\n"
cd $Home_Path/Logs/"$date_d"_"$Name";pwd 
