# SatyrScan 1.2.0 Manual #

Please read to understand how to use SatyrScan<br />
<br />
***Version Note: This version features a full system scan for virus scripts, as well as a mail scanner that works off of the Exim mail logs. ****<br />
<br />
> Already installed this bad boy? Don't install, UPDATE :D

---
To install the scanner:<br />
1: run <code>cd /home</code> <br />
2: run <code>wget https://raw.github.com/alleck/SatyrScan/master/SatyrScan-1.2.0/install.sh --no-check-certificate && sh install.sh</code>

---
To start the SatyrScan Spam Scanner:<br />
1: run <code>sh mailscan.sh</code><br />
2: The scanner will then start and populate the needed files.<br />
   *** Note: If you have trouble with this part, try running the command again as <code>sudo sh mailscan.sh</code>. You will need the root password though.<br />
3: Once the scan has finished it will ask you if you want to delete the files it found.<br />
4: Choose yes or no.<br />
<br />
***Note: If you choose "NO", then the file locations are stored in a file called "virus.local"<br />
***Note: If you wish to delete the files after saying "NO", Rather than running the script again, run "sh removevirs.sh".

---
To start the SatyrScan Virus Scanner:<br />
1: run <code>sh scan.sh</code><br />
2: The scanner will then start in the mode defined in the <code>config.sh</code> file and populate the needed files.<br />
   *** Note: If you have trouble with this part, try running the command again as <code>sudo sh scan.sh</code>. You will need the root password though.<br />
3: Once the scan has finished it will ask you if you want to delete the files it found.<br />
4: Choose yes or no.<br />
<br />
***Note: If you choose "NO", then the file locations are stored in a file called <code>virus.local</code><br />
***Note: If you wish to delete the files after saying "NO", Rather than running the script again, run <code>sh removespam.sh</code>.

---
To update SatyrScan:<br />
<br />
1: run <code>sh update.sh</code><br />
2: Wait for updater to display that it is finished.<br />
<br />
It will replace all files that are currently installed with updated versions, if the files are not already up to date.<br />
<br />
***Note: If you are missing and version.txt file or an update.sh file, you can update SatyrScan by running the following command:<br />
<br />
<<<<<<< HEAD
<code>wget https://raw.github.com/alleck/SatyrScan/master/SatyrScan-1.2.0/inc/upgrade.sh --no-check-certificate && sh upgrade.sh</code>
=======
<code>wget https://raw.github.com/alleck/SatyrScan/master/SatyrScan-1.2.0/upgrade.sh --no-check-certificate && sh upgrade.sh</code>

---
# Verson Release Notes #
1.2.3 - Added much needed update to the virus database
>>>>>>> origin/master
