cd /home/kakarsu/4G_Scripts
echo " starting stack"

./run_ptp4l.sh > tee /tmp/cohere_ptp.clog &
echo "*********************"

sleep 5 
echo " starting phc2sys proccess"
./run_phc2sys.sh > /tmp/cohere_phy2sys.clog &

echo "*********************"
sleep 5
./run_cpcc.sh > /tmp/cohere_cpcc.clog &

echo "*********************"
sleep 5
./run_l1_MTI.sh > tee /tmp/cohere_flexran.clog &

echo "*********************"
sleep 5
./run_l3.sh >  /tmp/cohere_l3.clog &


echo "*********************"
sleep 5

./run_pdcp.sh > /tmp/cohere_pdcp.clog 2>/dev/null &

echo "*********************"
sleep 5
./run_l2.sh > /tmp/cohere_l2.clog &

echo "Lte Stck done ..ckecl logs" 
