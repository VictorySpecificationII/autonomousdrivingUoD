# autonomousdrivingUoD - Project Maria Evolution I

An implementation of an autonomous time attack racing car using Machine Learning with game data for navigation.

Created and tested with TORCS v.1.3.7 running on Ubuntu 16.04.

# Usage

 - If you are doing a recon lap, open driver.cpp and set the recon flag in the drive() function to 1
 - If you want to go flat out, open driver.cpp and set the recon flag in the drive() function to 0
 
 - Install in /usr/src/torcs-install-directory/src/drivers
 - Run 'cd Maria'
 - Run 'make clean'
 - Run 'make'
 - Run 'make install'

##Datalogging
 - Rough first pass of the logger.
 - Custom message format.
 - Currently enabled, will add disable flag in the near future.
 - After the end of each race, run '''./postRaceSort.sh'''.
 - The separated values will each appear in their own file.

