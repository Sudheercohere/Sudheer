cd;cd repo4g/CPCC/source
start_time=$(date +'%Y-%m-%d %H:%M:%S')
source ../set_env_var.sh
make clean
make

echo "************************************"
end_time=$(date +'%Y-%m-%d %H:%M:%S')
echo -e "compilation Done \n"
echo " refer output : Com. Done "
echo "************************************"
echo "Start Time:$start_time"
echo "End_Time:$end_time"
