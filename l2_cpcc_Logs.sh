cd /home/kakarsu/4G_Scripts/;
#./logs.sh $1 $2 
./logs.sh 8 8 

echo -e " *************** \n"
echo -e "sleeping $1 \n"
echo -e "************ \n"

sleep $1
./logs.sh 3 3
