echo "enter line number starta nd end number to redirect to fill"
echo $1
echo $2
echo $3
sed -n "$1,$2p" $3 > trimed_$3
