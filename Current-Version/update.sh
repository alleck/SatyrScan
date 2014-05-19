wget -O /home/sscan/vrtest.inf -q https://raw.github/alleck/SatyrScan/master/SatyrScan-1.2.0/version.txt --no-check-certificate
var1=$(cat vrtest.inf)
var2=$(cat version.txt)

echo $var1
echo $var2

if [ $var1 == $var2 ]
then
 echo "You are on the most up to date version: " $var1
else
 echo "Updating from " $var2 " to " $var1
rm -f /home/sscan/accountscan.sh
rm -f /home/sscan/config.sh
rm -f /home/sscan/install.sh
rm -f /home/sscan/keyword.source
rm -f /home/sscan/mailscan.sh
rm -f /home/sscan/README
rm -f /home/sscan/removespam.sh
rm -f /home/sscan/removevirs.sh
rm -f /home/sscan/scan.sh
rm -f /home/sscan/systemscan.sh
rm -f /home/sscan/version.txt
rm -f /home/sscan/virs.source

wget https://raw.github.com/alleck/SatyrScan/master/SatyrScan-1.2.0/patch.sh --no-check-certificate && sh patch.sh

rm -f patch.sh
 echo "Update Complete!"

fi
