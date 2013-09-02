echo -e "\033[36m                                                   \033[0m"
echo -e "\033[36m  _________          __                     _________                         \033[0m"
echo -e "\033[36m /   _____/_____   _/  |_  ___.__._______  /   _____/  ____  _____     ____   \033[0m"
echo -e "\033[36m \_____  \ \__  \  \   __\<   |  |\_  __ \ \_____  \ _/ ___\ \__  \   /    \  \033[0m"
echo -e "\033[36m /        \ / __ \_ |  |   \___  | |  | \/ /        |\  \___  / __ \_|   |  \ \033[0m"
echo -e "\033[36m/_______  /(____  / |__|   / ____| |__|   /_______  / \___  >(____  /|___|  / \033[0m"
echo -e "\033[36m        \/      \/         \/                     \/      \/      \/      \/  \033[0m"
echo -e "\033[36m                                                   \033[0m"

echo -e "\033[35mClearing Old Source Files... \033[0m"
if [ -e "spamusers.source" ]
then
rm spamusers.source
rm spamscripts.source
rm cwdloc.source
rm scriptlocals.source
rm spamuserssort.source
rm spamscriptssort.source
fi

echo -e "\033[35mGathering Keywords... \033[0m"

#Get keywords
	while read line
	do
	grep "$line" /var/log/exim_mainlog | awk '{ print $5 }' >> spamusers.source
	done < keyword.source

echo -e "\033[35mSorting... \033[0m"
sort spamusers.source | uniq -d > spamuserssort.source

echo -e "\033[35mFinding Scripts... \033[0m"
#Get Script Location
	while read line
	do
	grep "$line" /var/log/exim_mainlog >> spamscripts.source
	done < spamuserssort.source

echo -e "\033[35mSorting... \033[0m"
sort spamscripts.source | uniq -d > spamscriptssort.source
sort spamscripts.source | uniq -u >> spamscriptssort.source

echo -e "\033[35mGetting Script Locations... \033[0m"
#Put Script locations into a file	
	grep "cwd" spamscriptssort.source >> cwdloc.source

echo -e "\033[35mParsing Locations... \033[0m"
#Parse Script Locations to readable
        while read line
        do
        Sub1=${line#*cwd=}
        if [ "${Sub1%* * args*}" != "$Sub2" ]; then
               
        echo ${Sub1%* * args*} >> scriptlocals.source
	fi	
	Sub2=${Sub1%* * args*}
        done < cwdloc.source
echo -e "\033[35mFinal Sort... \033[0m"
sort scriptlocals.source | uniq -d > report.source
sort scriptlocals.source | uniq -u >> report.source

echo -e "\033[32mFinished! \033[0m"

rm virloc.source
	
while read reportline
do
	while read line
	do

	#Change to match email scan location

	grep -lE "$line" $reportline/* >> virloc.source
	done < virs.source

	sort virloc.source | uniq -u > virus.local
	sort virloc.source | uniq -d >> virus.local
done < report.source

read -p "Do you wish to REMOVE the infected files? " remove

	if [ $remove = "y" ] || [ $remove = "Y" ] || [ $remove = "yes" ] || [ $remove = "Yes" ]; then
	echo -e "\033[31m"
	read -p "ARE YOU SURE YOU WISH REMOVE THE INFECTED FILES? "
	echo -e "\033[0m"

		if [ $remove = "y" ] || [ $remove = "Y" ] || [ $remove = "yes" ] || [ $remove = "Yes" ]; then

		while read line
		do
		rm -f $line
		done < virus.local

		echo "Removed files"
		fi
	else
	echo "Please check virloc.source for file locations"
	fi
