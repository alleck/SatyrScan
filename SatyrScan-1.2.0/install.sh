mkdir /home/sscan
cd /home/sscan
echo -ne '####                      (14%)\r'
wget -q https://raw.github.com/alleck/SatyrScan/master/SatyrScan-1.1.0/virs.source
echo -ne '#######                   (28%)\r'
wget -q https://raw.github.com/alleck/SatyrScan/master/SatyrScan-1.1.0/systemscan.sh
echo -ne '############              (42%)\r'
wget -q https://raw.github.com/alleck/SatyrScan/master/SatyrScan-1.1.0/mailscan.sh
echo -ne '################          (57%)\r'
wget -q https://raw.github.com/alleck/SatyrScan/master/SatyrScan-1.1.0/removevirs.sh
echo -ne '###################       (71%)\r'
wget -q https://raw.github.com/alleck/SatyrScan/master/SatyrScan-1.1.0/removespam.sh
echo -ne '######################    (85%)\r'
wget -q https://raw.github.com/alleck/SatyrScan/master/SatyrScan-1.1.0/keyword.source
echo -ne '##########################(100%)\r'
echo -ne '\n'
