pkill l1app
lteLayer2_pid=$(ps -aux | grep './lteLayer2' | grep -v grep | awk '{print $2}')
if [ "$lteLayer2_pid" != "" ];
then
	kill -9 $lteLayer2_pid
fi
pkill lte_son
pkill lte_rrm
pkill rrc_entity
#pkill lte_oam
pkill lte_pdcp
pkill lte_gtpu
pkill ltebinread
pkill cpcc
parents_of_dead_kids=$(ps -ef | grep [d]efunct  | awk '{print $3}' | sort | uniq | egrep -v '^1$')
if [ $parents_of_dead_kids = ""]; then
	echo "clean up complete"
else
	echo "defunct process not killed $parents_of_dead_kids"
	kill -9 $parents_of_dead_kids
fi

