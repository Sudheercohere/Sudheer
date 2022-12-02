start_time=$(date +'%Y-%m-%d %H:%M:%S')
cd ;pwd;cd repo4g/LTE_IPR/lteenodeb
. .lteenodeb_settings_cran_rlc_pdcp_split
source ./set_icc_paths.sh
./build.sh clean all fdd
./build.sh all fdd intel_64 lksctp 2>&1 | tee build.log
end_time=$(date +'%Y-%m-%d %H:%M:%S')
echo " *******refer screen now:Com :Donne****"
echo "Start Time:$start_time"
echo "End_Time:$end_time"
