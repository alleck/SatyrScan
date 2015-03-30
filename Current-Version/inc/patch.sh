#!/bin/bash
cd /home/sscan/inc
echo -ne '###                       (11%)\r'
wget -q https://raw.github.com/alleck/SatyrScan/master/SatyrScan-1.2.0/inc/virs.source --no-check-certificate
echo -ne '#####                     (22%)\r'
wget -q https://raw.github.com/alleck/SatyrScan/master/SatyrScan-1.2.0/inc/systemscan.sh --no-check-certificate
echo -ne '#########                 (33%)\r'
wget -q https://raw.github.com/alleck/SatyrScan/master/SatyrScan-1.2.0/inc/accountscan.sh --no-check-certificate
echo -ne '############              (44%)\r'
wget -q https://raw.github.com/alleck/SatyrScan/master/SatyrScan-1.2.0/inc/config.sh --no-check-certificate
echo -ne '##############            (55%)\r'
wget -q https://raw.github.com/alleck/SatyrScan/master/SatyrScan-1.2.0/inc/keyword.source --no-check-certificate
echo -ne '################          (66%)\r'

cd /home/sscan
wget -q https://raw.github.com/alleck/SatyrScan/master/SatyrScan-1.2.0/scan.sh --no-check-certificate
echo -ne '###################       (77%)\r'
wget -q https://raw.github.com/alleck/SatyrScan/master/SatyrScan-1.2.0/mailscan.sh --no-check-certificate
echo -ne '######################    (88%)\r'
wget -q https://raw.github.com/alleck/SatyrScan/master/SatyrScan-1.2.0/version.txt --no-check-certificate
wget -q https://raw.github.com/alleck/SatyrScan/master/SatyrScan-1.2.0/removevirs.sh --no-check-certificate
echo -ne '########################  (99%)\r'
wget -q https://raw.github.com/alleck/SatyrScan/master/SatyrScan-1.2.0/removespam.sh --no-check-certificate
rm update.sh
wget -q https://raw.github.com/alleck/SatyrScan/master/SatyrScan-1.2.0/update.sh --no-check-certificate
echo -ne '##########################(100%)\r'
echo -ne '\n'
