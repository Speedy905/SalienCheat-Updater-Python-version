#!/bin/bash

# saliencheat_pythonupdater.sh - Downloads the updated version for the Python version of SalienCheat

# By /u/thespeedy905

# Instructions
# Make sure that this script is in the same folder as cheat.py
# Make sure to give this script execure permissions (In that case chmod u+x saliencheat_pythonupdater.sh)
# Run the script by typing ./saliencheat_pythonupdater.sh


# Gives a welcome message
echo "Hello. This script will now download an updated version of the saliencheat, python version"


# Checks if file exists in the same directory
# If it does it removes the file so that an updated version can be downloaded
# If it doesnt, It will do nothing an still download the updated script
if [ -e cheat.py ]
then
	echo "Removing cheat.py so that an updated version can be downloaded"
	rm cheat.py
	echo " "
else
	echo "File cheat.py is not found. Will still download an updated script"
	echo " "
fi


# Checks for an internet connection
# If it does, gives out a good message
# If it doesnt, spits out an error and exits the script
echo "Will now test for an internet connection, please wait"
ping -q -c5 8.8.8.8 > /dev/null
if [ $? -eq 0 ]
then 
	echo "You are successfully connected to the internet. It will now download the script"
	echo " "
else
	echo "You are not connected to the interenet. Please double check your connection"
	exit 1
fi


#Downloads the script, and gives execute permissions
wget https://raw.githubusercontent.com/SteamDatabase/SalienCheat/master/cheat.py 
chmod u+x cheat.py

echo "Download successful! Now just launch the script by typing ./cheat.py or ./cheat.py [INSERT TOKEN NUMBER HERE] if this is your first time running the script"
