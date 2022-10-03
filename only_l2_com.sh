cd ;pwd;cd repo4g/LTE_IPR/lteenodeb
. .lteenodeb_settings_cran_rlc_pdcp_split
source ./set_icc_paths.sh
./build.sh clean l2
./build.sh l2 fdd intel_64 lksctp 2>&1 | tee build.log
echo " refer screen now:Com :Donne"
