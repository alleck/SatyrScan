mkdir /home/sscan
cd /home/sscan
echo -ne '###                       (11%)\r'
wget -q https://raw.github.com/alleck/SatyrScan/master/SatyrScan-1.2.0/virs.source
echo -ne '#####                     (22%)\r'
wget -q https://raw.github.com/alleck/SatyrScan/master/SatyrScan-1.2.0/systemscan.sh
echo -ne '#########                 (33%)\r'
wget -q https://raw.github.com/alleck/SatyrScan/master/SatyrScan-1.2.0/accountscan.sh
echo -ne '############              (44%)\r'
wget -q https://raw.github.com/alleck/SatyrScan/master/SatyrScan-1.2.0/scan.sh
echo -ne '##############            (55%)\r'
wget -q https://raw.github.com/alleck/SatyrScan/master/SatyrScan-1.2.0/config.sh
echo -ne '################          (66%)\r'
wget -q https://raw.github.com/alleck/SatyrScan/master/SatyrScan-1.2.0/mailscan.sh
echo -ne '###################       (77%)\r'
wget -q https://raw.github.com/alleck/SatyrScan/master/SatyrScan-1.2.0/removevirs.sh
echo -ne '######################    (88%)\r'
wget -q https://raw.github.com/alleck/SatyrScan/master/SatyrScan-1.2.0/removespam.sh
echo -ne '########################  (99%)\r'
wget -q https://raw.github.com/alleck/SatyrScan/master/SatyrScan-1.2.0/keyword.source
echo -ne '##########################(100%)\r'
echo -ne '\n'
