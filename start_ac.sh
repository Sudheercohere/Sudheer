echo "*** setting La Parms ***"

cd /home/kakarsu/Automation/automation/startup_scripts/4G_scripts/;
/home/kakarsu/Automation/automation/startup_scripts/4G_scripts/set_cpcc_params.sh


echo "setting srs pusch bias values "

/home/kakarsu/repo4g/flexran/source/lte/Cohere/scripts/set_trigger_srs_bias.sh 300 
/home/kakarsu/repo4g/flexran/source/lte/Cohere/scripts/set_trigger_pusch_bias.sh 1 300 
sleep 5

cd /home/kakarsu/Sudheer/;pwd;

###Before running autocal disable mu mimo and reset autocal flags
./disable_mu_mimo.sh
./stop_ac.sh

##Make sure dl cal is enabled
/home/kakarsu/repo4g/flexran/source/lte/Cohere/scripts/enable_calibration.sh 1

####Collect CPCC logs
/home/kakarsu/repo4g/CPCC/test_code/scripts/set_log_level.sh 8
cd /home/kakarsu/repo4g/CPCC/bin/

##datep=$(date)
datep=`date +%y%m%d%H%M%S`
./cpcc_tail_logs > /home/kakarsu/Logs/AutoCalLogs/AutoCal_CPCC_Logs_sk_"$datep".log &
l_pid=$!

echo ""
echo "+++++++++++++++++++++++++++++++++++++++++++++Log PID:--->" $l_pid

#cd /home/kakarsu/Logs
cd /home/kakarsu/Sudheer

##Autocal can be run only with cohere scheduler, enable it
./enable_cohere.sh


sleep 2
START_TIME=$(date)
echo "StartTime = $START_TIME"

ROOT=`cat workspace`
CPCC_DIR=$ROOT/CPCC

#CAPTURE_NAME=$1
CAPTURE_NAME=temp1

# make sure to stop prior AC if any
cd $CPCC_DIR/scripts/auto_cal/

./reset_autocal_ctrl.sh 1

sleep 2
./bc_garbage_cnt.sh 60
./bc_garbage_threshold.sh 0.7
./bc_min_blocks.sh 40
./ref_data_tti_period.sh 10
./bc_rel_diff_threshold.sh 0.4
./bc_abs_diff_threshold.sh 0.04
./bc_convergence_chk_period.sh 80
./num_chan.sh 1000
./ac_gain_adj0.sh -4
./ac_gain_adj1.sh -4

./ac_bias_after_fine.sh 1

./start_ac.sh $CAPTURE_NAME



echo ""
echo "StartTime = $START_TIME"
END_TIME=$(date)
echo "EndTime = $END_TIME"
echo ""

####Kill Log
echo "+++Killing logging...process id: " $l_pid
echo ""
kill -9 $l_pid

/home/kakarsu/repo4g/CPCC/test_code/scripts/set_log_level.sh 3
echo ""
echo "++++++++++++++++++Succussfull RAN AUTO CAL+++++++++++++++++++++++++++++"
