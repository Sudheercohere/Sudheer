#!/bin/bash

RED='\033[0;31m'
RESET='\033[0m'
PURPLE='\033[0;35m'

num_args=$#
num_files=$1
file_size=$2
kill_cmd=""

trap ctrl_c INT
function ctrl_c() {
    echo "Trapped CTRL-C"
    echo "Stopping LOGGING"
    #if [ ! -z "$kill_cmd" ]; then
    #    eval "$kill_cmd"
    #    kill_cmd=""
    #fi
    eval "sudo pkill cpcc_tail_logs"
    exit
}


display_help() {
    echo -e "${PURPLE}usage: cpcc_logging.sh <num_files> <file_size in MB>${RESET}"
    echo -e "${PURPLE}eg: cpcc_logging.sh 5 100${RESET}"
    exit
}

if (($num_args != 2))
then
    display_help
fi

if [ -z "${num_files##*[!0-9]*}" ]; then
    echo -e "${RED}$num_files is not a number${RESET}"
    display_help
    exit 1
fi

if [ -z "${file_size##*[!0-9]*}" ]; then
    echo -e "${RED}$file_size is not a number${RESET}"
    display_help
    exit 1
fi

declare -a file_name_array
for (( i=0; i<$num_files; i++ ))
do
    file_name_array[$i]=""
done

i=0
while true
do
    timestamp=$(date +"%T.%3N")
    printf -v name 'cpcclog_%s.txt' "$timestamp"
 
    printf -v cmd 'sudo ./cpcc_tail_logs > %s &' "$name"
    eval "$cmd"
    PID=$!
    if [ ! -z "$kill_cmd" ]; then
        eval "$kill_cmd"
        kill_cmd=""
    fi
    if [ ! -z "${file_name_array[$i]}" ]; then
        eval "rm -f ${file_name_array[$i]}"
    fi
    printf -v kill_cmd 'sudo pkill -P %d &> /dev/null' "$PID"
    file_name_array[$i]=$name
    sizeMB=0
    while [[ $sizeMB -lt $file_size ]]
    do
        size_bytes=$(wc -c $name | awk '{print $1}')
        sizeMB=$((size_bytes / (1024*1024)))
        sleep 0.1
    done
    j=`expr $i + 1`
    i=`expr $j % $num_files`
done
