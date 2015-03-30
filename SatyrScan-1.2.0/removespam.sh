#!/bin/bash
read -p "Do you wish to REMOVE the infected files? " remove

        if [ $remove = "y" ] || [ $remove = "Y" ] || [ $remove = "yes" ] || [ $remove = "Yes" ]; then
        echo -e "\033[31m"
        read -p "ARE YOU SURE YOU WISH REMOVE THE INFECTED FILES? "
        echo -e "\033[0m"

                if [ $remove = "y" ] || [ $remove = "Y" ] || [ $remove = "yes" ] || [ $remove = "Yes" ]; then

                while read line
                do
                rm -f $line
                done < spam.local

                echo "Removed files"
                fi
        else
        echo "Please check spam.local for file locations"
        fi

