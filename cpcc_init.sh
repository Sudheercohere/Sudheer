/home/kakarsu/repo4g/CPCC/test_code/scripts/set_cqi_table.sh 0
/home/kakarsu/repo4g/CPCC/test_code/scripts/set_beams.sh 1
/home/kakarsu/repo4g/CPCC/test_code/scripts/set_aoa_separation.sh 20
/home/kakarsu/repo4g/CPCC/test_code/scripts/set_aoa_increment.sh 20
/home/kakarsu/repo4g/CPCC/test_code/scripts/set_log_level.sh 0
# if CQI and rank are picked up from CQI report following 2 wont take effect
/home/kakarsu/repo4g/CPCC/test_code/scripts/set_cqi_cw0.sh 8
/home/kakarsu/repo4g/CPCC/test_code/scripts/set_cqi_cw1.sh 8
/home/kakarsu/repo4g/CPCC/test_code/scripts/set_rank.sh 2
# to enable static mcs with cohere just use valid MCS number instead of 255
/home/kakarsu/repo4g/CPCC/test_code/scripts/set_mcs_ctrl.sh 255

/home/kakarsu/repo4g/CPCC/source/coeff_compute/scripts/set_precoder_regularizer_dB.sh -12
/home/kakarsu/repo4g/CPCC/source/coeff_compute/scripts/set_ui_file_update_interval_ms.sh 2000

cd /home/kakarsu/repo4g/CPCC/source/channel_attributes/scripts/
./bler_depth_ms.sh 200
./long_bler_increase_cnt_thresh.sh 20
./long_bler_reduce_cnt_thresh.sh 20
./short_bler_cnt_thresh.sh 10
./reduce_cqi_short_thresh.sh 0.35
./reduce_cqi_long_thresh.sh 0.10
./increase_cqi_long_thresh.sh 0.01
./num_avg_srs.sh 4
./mov_avg_alpha.sh 0.001
./min_cqi_val.sh 4
./ul_snr_threshold.sh -15
./enable_link_adapt_acks.sh 1
./enable_cqi.sh 1
./enable_rank.sh 1


#/home/kakarsu/repo4g/CPCC/test_code/scripts/disable_la.sh

# link adaptation scripts
/home/kakarsu/repo4g/CPCC/source/channel_attributes/scripts/enable_link_adapt_acks.sh 1
# pick CQI from CQI reports
/home/kakarsu/repo4g/CPCC/source/channel_attributes/scripts/enable_cqi.sh 1
# pick rank from CQI reports
/home/kakarsu/repo4g/CPCC/source/channel_attributes/scripts/enable_rank.sh 1
