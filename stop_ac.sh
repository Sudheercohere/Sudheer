ROOT=`cat workspace`
CPCC_DIR=$ROOT/CPCC

cd $CPCC_DIR/scripts/auto_cal/
./trigger_ac.sh 0
./set_ac_state.sh 1

# set log level to 0
cd $CPCC_DIR/test_code/scripts/
./set_log_level.sh 0