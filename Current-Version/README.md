==========================
# SatyrScan 1.2.0 Manual #
==========================

Please read to understand how to use SatyrScan

***Version Note: This version features a full system scan for virus scripts, as well as a mail scanner that works off of the Exim mail logs. ****

>> Already installed this bad boy? Don't install, UPDATE :D

=========================================
To install the scanner:
1: run <code>cd /home</code>
2: run <code>wget https://raw.github.com/alleck/SatyrScan/master/SatyrScan-1.2.0/install.sh --no-check-certificate && sh install.sh</code>

=========================================
To start the SatyrScan Spam Scanner:
1: run "sh mailscan.sh"
2: The scanner will then start and populate the needed files.
   *** Note: If you have trouble with this part, try running the command again as "sudo sh mailscan.sh". You will need the root password though.
3: Once the scan has finished it will ask you if you want to delete the files it found.
4: Choose yes or no.

***Note: If you choose "NO", then the file locations are stored in a file called "virus.local"
***Note: If you wish to delete the files after saying "NO", Rather than running the script again, run "sh removevirs.sh".

=========================================
To start the SatyrScan Virus Scanner:
1: run "sh scan.sh"
2: The scanner will then start in the mode defined in the "config.sh" file and populate the needed files.
   *** Note: If you have trouble with this part, try running the command again as "sudo sh systemscan.sh". You will need the root password though.
3: Once the scan has finished it will ask you if you want to delete the files it found.
4: Choose yes or no.

***Note: If you choose "NO", then the file locations are stored in a file called "virus.local"
***Note: If you wish to delete the files after saying "NO", Rather than running the script again, run "sh removespam.sh".

=========================================
To update SatyrScan:

1: run "sh update.sh"
2: Wait for updater to display that it is finished.

It will replace all files that are currently installed with updated versions, if the files are not already up to date.

***Note: If you are missing and version.txt file or an update.sh file, you can update SatyrScan by running the following command:

<code>wget https://raw.github.com/alleck/SatyrScan/master/SatyrScan-1.2.0/upgrade.sh --no-check-certificate && sh upgrade.sh</code>
