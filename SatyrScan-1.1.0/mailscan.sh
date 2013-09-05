source ./config.sh
echo -e "\033[36m                                                   \033[0m"
echo -e "\033[36m  _________          __                     _________                         \033[0m"
echo -e "\033[36m /   _____/_____   _/  |_  ___.__._______  /   _____/  ____  _____     ____   \033[0m"
echo -e "\033[36m \_____  \ \__  \  \   __\<   |  |\_  __ \ \_____  \ _/ ___\ \__  \   /    \  \033[0m"
echo -e "\033[36m /        \ / __ \_ |  |   \___  | |  | \/ /        |\  \___  / __ \_|   |  \ \033[0m"
echo -e "\033[36m/_______  /(____  / |__|   / ____| |__|   /_______  / \___  >(____  /|___|  / \033[0m"
echo -e "\033[36m        \/      \/         \/                     \/      \/      \/      \/  \033[0m"
echo -e "\033[36m                                                   \033[0m"

if [ ! -d "sourcefiles" ]
then
mkdir sourcefiles
chmod 755 sourcefiles
fi

echo -e "\033[35mClearing Old Source Files... \033[0m"
if [ -e "sourcefiles/spamusers.source" ]
then
rm sourcefiles/spamusers.source
rm sourcefiles/spamscripts.source
rm sourcefiles/cwdloc.source
rm sourcefiles/scriptlocals.source
rm sourcefiles/spamuserssort.source
rm sourcefiles/spamscriptssort.source
rm sourcefiles/spamloc.source
fi

echo -e "\033[35mGathering Keywords... \033[0m"

#Get keywords
	while read line
	do
	grep "$line" $mailloc | awk '{ print $5 }' >> sourcefiles/spamusers.source
	done < keyword.source

echo -e "\033[35mSorting... \033[0m"
sort sourcefiles/spamusers.source | uniq -d > sourcefiles/spamuserssort.source

echo -e "\033[35mFinding Scripts... \033[0m"
#Get Script Location
	while read line
	do
	grep "$line" $mailloc >> sourcefiles/spamscripts.source
	done < sourcefiles/spamuserssort.source

echo -e "\033[35mSorting... \033[0m"
sort sourcefiles/spamscripts.source | uniq -d > sourcefiles/spamscriptssort.source
sort sourcefiles/spamscripts.source | uniq -u >> sourcefiles/spamscriptssort.source

echo -e "\033[35mGetting Script Locations... \033[0m"
#Put Script locations into a file	
	grep "cwd" sourcefiles/spamscriptssort.source >> sourcefiles/cwdloc.source

echo -e "\033[35mParsing Locations... \033[0m"
#Parse Script Locations to readable
        while read line
        do
        Sub1=${line#*cwd=}
        if [ "${Sub1%* * args*}" != "$Sub2" ]; then
               
        echo ${Sub1%* * args*} >> sourcefiles/scriptlocals.source
	fi	
	Sub2=${Sub1%* * args*}
        done < sourcefiles/cwdloc.source
echo -e "\033[35mFinal Sort... \033[0m"
sort sourcefiles/scriptlocals.source | uniq -d > sourcefiles/report.source
sort sourcefiles/scriptlocals.source | uniq -u >> sourcefiles/report.source

echo -e "\033[32mFinished! \033[0m"
	
while read reportline
do
	while read line
	do

	#Change to match email scan location

	grep -lE "$line" $reportline/* >> sourcefiles/spamloc.source
	done < virs.source

	sort sourcefiles/spamloc.source | uniq -u > spam.local
	sort sourcefiles/spamloc.source | uniq -d >> spam.local
done < sourcefiles/report.source
echo " "
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
	echo " "
	echo -e "\033[32mPlease check spam.local for file locations\033[0m"
	fi
