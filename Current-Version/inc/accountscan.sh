#!/bin/bash
read -p "Please enter cpanel username of account you wish to scan: " acct

if [ ! -d "sourcefiles" ]
then
mkdir sourcefiles
chmod 755 sourcefiles
fi

if [ -e "sourcefiles/virloc.source" ]
then
        rm sourcefiles/virloc.source
fi

echo -e "\033[35mFinding Scripts... \033[0m"

#Numbers for loading bar
percent=$(wc -l virs.source | awk '{print $1}')
process=$(bc -l <<< "scale = 3;  100 / $percent")
proc2=$process

#Get script locations
while read line
do
        echo -ne "$process \r"
        grep -lE -R --exclude="virs.source" "$line" /home*/$acct/public_html/*  >> sourcefiles/virloc.source
        grep -lE -R --exclude="virs.source" "$line" /home*/$acct/public_html/.[[:alnum:]]*  >> sourcefiles/virloc.source
        process=$(bc -l <<< "scale = 2; $process + $proc2")


done < virs.source

#Sort out duplicates
echo -e "\033[35mSorting... \033[0m"
sort sourcefiles/virloc.source | uniq -u > virus.sort
sort sourcefiles/virloc.source | uniq -d >> virus.sort
sed -e 's/ /\\\ /g' virus.sort >> virus.local

echo " "
read -p "Do you wish to REMOVE the infected files? " remove

        if [ $remove = "y" ] || [ $remove = "Y" ] || [ $remove = "yes" ] || [ $remove = "Yes" ]
        then
        echo -e "\033[31m"
        read -p "ARE YOU SURE YOU WISH REMOVE THE INFECTED FILES? " remove
        echo -e "\033[0m"

                if [ $remove = "y" ] || [ $remove = "Y" ] || [ $remove = "yes" ] || [ $remove = "Yes" ]
                then

                cat virus.local | xargs rm -f

                echo "Removed files"
                fi
        else
        echo " "
        echo -e "\033[32mPlease check virus.local for file locations\033[0m"
        fi


