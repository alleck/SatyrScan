# mkdir /home/sscan
# CW > test for '/home/scan' first

if [ ! -d "/home/sscan" ]
then
mkdir /home/sscan
chmod 755 /home/sscan
fi

cd /home/sscan
echo -ne '###                       (11%)\r'
wget -q https://raw.github.com/alleck/SatyrScan/master/SatyrScan-1.2.0/virs.source --no-check-certificate
echo -ne '#####                     (22%)\r'
wget -q https://raw.github.com/alleck/SatyrScan/master/SatyrScan-1.2.0/systemscan.sh --no-check-certificate
echo -ne '#########                 (33%)\r'
wget -q https://raw.github.com/alleck/SatyrScan/master/SatyrScan-1.2.0/accountscan.sh --no-check-certificate
echo -ne '############              (44%)\r'
wget -q https://raw.github.com/alleck/SatyrScan/master/SatyrScan-1.2.0/scan.sh --no-check-certificate
echo -ne '##############            (55%)\r'
wget -q https://raw.github.com/alleck/SatyrScan/master/SatyrScan-1.2.0/config.sh --no-check-certificate
echo -ne '################          (66%)\r'
wget -q https://raw.github.com/alleck/SatyrScan/master/SatyrScan-1.2.0/mailscan.sh --no-check-certificate
echo -ne '###################       (77%)\r'
wget -q https://raw.github.com/alleck/SatyrScan/master/SatyrScan-1.2.0/version.txt --no-check-certificate
wget -q https://raw.github.com/alleck/SatyrScan/master/SatyrScan-1.2.0/update.sh --no-check-certificate
wget -q https://raw.github.com/alleck/SatyrScan/master/SatyrScan-1.2.0/removevirs.sh --no-check-certificate
echo -ne '######################    (88%)\r'
wget -q https://raw.github.com/alleck/SatyrScan/master/SatyrScan-1.2.0/removespam.sh --no-check-certificate
echo -ne '########################  (99%)\r'
wget -q https://raw.github.com/alleck/SatyrScan/master/SatyrScan-1.2.0/keyword.source --no-check-certificate
echo -ne '##########################(100%)\r'
echo -ne '\n'
