ROOT=`cat workspace`
CPCC_DIR=$ROOT/CPCC

./enable_cohere.sh
sudo /home/kakarsu/repo4g/CPCC/test_code/scripts/enable_mu_mimo.sh 1

# set RD-LA parameters
cd $CPCC_DIR/source/channel_attributes/scripts/

./bler_depth_ms_ref.sh 100
./long_bler_increase_cnt_thresh_ref.sh 20
./long_bler_reduce_cnt_thresh_ref.sh 20
./short_bler_cnt_thresh_ref.sh 20
./reduce_cqi_short_thresh_ref.sh 0.60
./reduce_cqi_long_thresh_ref.sh 0.60
./increase_cqi_long_thresh_ref.sh 0.20

cd $CPCC_DIR/scripts/auto_cal/

# set tracking parameters

# set alphas
#default
#./testmode_autotrack_params.sh 1.4 1 0.6 0.8 0.8 0.8 11 7 4 0.8 0.8 0.8
./testmode_autotrack_params.sh 1.4 1 0.6 0.2 0.13 0.06 14 9 5 0.8 0.7 0.7


./testmode_autotrack_use_ref_cqi.sh 1

# set number of grants for tracking and LA
./bc_convergence_chk_period.sh 20
./testmode_autotrack_ref_la_len.sh 350

./ref_data_tti_period.sh 15

# run RD-LA briefly
echo "******* Running RD-LA for a bit"
./testmode_run_la.sh 2 1
sleep 8

./testmode_start_autotrack.sh

sleep 5
echo "enableing alias_detect flag"
/home/kakarsu/repo4g/CPCC/scripts/alias_detect/enable_auto_alias_detect.sh 1
