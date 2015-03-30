#!/bin/bash
source ./inc/config.sh
echo -e "\033[36m                                                   \033[0m"
echo -e "\033[36m  _________          __                     _________                         \033[0m"
echo -e "\033[36m /   _____/_____   _/  |_  ___.__._______  /   _____/  ____  _____     ____   \033[0m"
echo -e "\033[36m \_____  \ \__  \  \   __\<   |  |\_  __ \ \_____  \ _/ ___\ \__  \   /    \  \033[0m"
echo -e "\033[36m /        \ / __ \_ |  |   \___  | |  | \/ /        |\  \___  / __ \_|   |  \ \033[0m"
echo -e "\033[36m/_______  /(____  / |__|   / ____| |__|   /_______  / \___  >(____  /|___|  / \033[0m"
echo -e "\033[36m        \/      \/         \/                     \/      \/      \/      \/  \033[0m"
echo -e "\033[36m                                                   \033[0m"

if [ $scantype = "1" ]
then

echo "Running in single account mode..."
sh ./inc/accountscan.sh

elif [ $scantype = "2" ]
then

echo "Running in system scan mode..."
sh ./inc/systemscan.sh

else

echo "Scan mode not set. Please check option [3] of the config.sh file."

fi


