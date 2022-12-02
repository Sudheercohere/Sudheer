a=0
while true
do 
sleep 10 
/home/kakarsu/sudheer/logs.sh 8 8
cd /home/kakarsu;./disable_cohere.sh
sleep 10 
/home/kakarsu/sudheer/logs.sh 0 0
sleep 60 
/home/kakarsu/sudheer/logs.sh 8 8
cd /home/kakarsu/;./enable_cohere.sh
sleep 10
/home/kakarsu/sudheer/logs.sh 0 0 
a=`expr $a + 1`
echo "no iteration:$a"
sleep 60
done

