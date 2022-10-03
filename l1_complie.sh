cd /home/kakarsu/repo4g/flexran;
pwd;
sleep 1 
source ./set_env_var.sh -d
sleep 2
./flexran_build.sh -e -r lte -m sdk
sleep 2
./flexran_build.sh -e -r lte -b -n -m xran
sleep 3
./flexran_build.sh -e -r lte -b -n -m all -C -S
sleep 4
echo "Done"
