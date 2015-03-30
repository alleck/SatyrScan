SatyrScan
=============

SatyrScan is an open source, virus and spam scanner for CentOS and RedHat.

It currently works off the Exim exim_mainlog file located in /var/log.

It is fully intended for use with cPanel.

***Release Note: Version 1.0.0 - Release Date 08/31/2013: Only scans for spam causing scripts at this point.

***Release Note: Version 1.1.0 - Release Date 09/05/2013: Will have full virus scanning capibility and an editable configuration file.

***Release Note: Version 1.2.0 - Release Date 02/25/2013: Added the ability to choose between system and accout scan mode. Added in an updater module.

If you are missing and version.txt file or an update.sh file, you can update SatyrScan by running the following command: <br />
<code>wget https://raw.github.com/alleck/SatyrScan/master/SatyrScan-1.2.0/inc/upgrade.sh --no-check-certificate && sh upgrade.sh</code>
