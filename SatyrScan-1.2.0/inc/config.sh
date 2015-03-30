#!/bin/bash
####################################################
#  _____              __ _        ______ _ _       #
# /  __ \            / _(_)       |  ___(_) |      #
# | /  \/ ___  _ __ | |_ _  __ _  | |_   _| | ___  #
# | |    / _ \| '_ \|  _| |/ _` | |  _| | | |/ _ \ #
# | \__/\ (_) | | | | | | | (_| | | |   | | |  __/ #
#  \____/\___/|_| |_|_| |_|\__, | \_|   |_|_|\___| #
#                           __/ |                  #
#                          |___/                   #
####################################################


# Here is where all the variables are stored.
# This is to make it easier to edit the settings,
# Just in case your system is not the Defaut cPanel setup.


#################################
# Location of the Exim main log #
#################################

mailloc="/var/log/exim_mainlog"

###############################
# Number of /home directories #
###############################

homedirs="1"

#####################################################
# Set account scan mode [1] or system scan mode [2] #
#####################################################

scantype="1"
