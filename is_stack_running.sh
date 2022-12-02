while true
do
    l1app=$(pgrep l1app)
    lte_son=$(pgrep lte_son)
    lte_oam=$(pgrep lte_oam)
    lte_rrm=$(pgrep lte_rrm)
    rrc_entity=$(pgrep rrc_entity)
    lte_pdcp=$(pgrep lte_pdcp)
    lte_gtpu=$(pgrep lte_gtpu)
    ltebinread=$(pgrep ltebinread)
    cpcc=$(pgrep cpcc)
    ptp=$(pgrep ptp)
    phc=$(pgrep phc)

    RED="\033[0;31m"
    GREEN="\033[0;32m"
    YELLOW="\033[1;33m"

    NC="\033[0m"

    if [ "$l1app" == "" ]
    then
        printf "${RED} l1app not running ${NC} \n"
        continue
    fi

    if [ "$lte_oam" == "" ]
    then
        printf "${RED} lte_oam not running ${NC} \n"
        continue
    fi

    if [ "$lte_son" == "" ]
    then
        printf "${RED} lte_son not running ${NC} \n"
        continue
    fi

    if [ "$lte_rrm" == "" ]
    then
        printf "${RED} lte_rrm not running ${NC} \n"
        continue
    fi

    if [ "$rrc_entity" == "" ]
    then
        printf "${RED} rrc_entity not running ${NC} \n"
        continue
    fi

    if [ "$lte_pdcp" == "" ]
    then
        printf "${RED} lte_pdcp not running ${NC} \n"
        continue
    fi

    if [ "$lte_gtpu" == "" ]
    then
        printf "${RED} lte_gtpu not running ${NC} \n"
        continue
    fi

    if [ "$ltebinread" == "" ]
    then
        printf "${RED} ltebinread not running ${NC} \n"
        continue
    fi

    if [ "$cpcc" == "" ]
    then
        printf "${RED} cpcc not running ${NC} \n"
        continue
    fi

    if [ "$ptp" == "" ]
    then
        printf "${RED} ptp not running ${NC} \n"
        continue
    fi

    if [ "$phc" == "" ]
    then
        printf "${RED} phc not running ${NC} \n"
        continue
    fi

    printf "${GREEN} stack is running file ${NC} \n"
    sleep 0.1
done