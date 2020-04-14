#!/bin/bash

previewFiles="False"

FILE=/usr/src/torcs/torcs-1.3.7/src/drivers/Maria/Log.txt
if test -f "$FILE"; then
    echo "$FILE exists. Processing"
else
	echo "$FILE does not exist; Datalogging is disabled in driver.cpp"
	echo ""
	echo "Enable datalogging, compile and run, then re run this script."
	echo " "
	echo "Exiting..."
	exit 130
fi


echo "Creating directories..."
mkdir -p Logs
cd Logs
mkdir -p General
mkdir -p Vehicle
mkdir -p Track
cd ..
# pwd
sleep 2s

echo "Processing raw data log..."
echo " "
sleep 2s
cat Log.txt | grep 'SessionDetail' >> Logs/General/SessionDetails
cat Log.txt | grep 'Stuck' >> Logs/Vehicle/Stuck
cat Log.txt | grep 'Steering' >> Logs/Vehicle/Steering
cat Log.txt | grep 'Gear' >> Logs/Vehicle/Gearing
cat Log.txt | grep 'Throttle' >> Logs/Vehicle/Throttling
cat Log.txt | grep 'Brake' >> Logs/Vehicle/Braking
cat Log.txt | grep 'TrackAngle' >> Logs/Track/TrackAngle
cat Log.txt | grep 'Yaw' >> Logs/Vehicle/Yaw
cat Log.txt | grep 'RemainingFuel' >> Logs/Vehicle/RemainingFuel
cat Log.txt | grep 'MassWithFuelUpdate' >> Logs/Vehicle/MassWithFuelUpdate
cat Log.txt | grep 'VehicleSpeed' >> Logs/Vehicle/VehicleSpeed
cat Log.txt | grep 'SpeedX' >> Logs/Vehicle/VehicleSpeedX
cat Log.txt | grep 'PositionX' >> Logs/Vehicle/PositionX
cat Log.txt | grep 'PositionY' >> Logs/Vehicle/PositionY
cat Log.txt | grep 'SegmentTypeStraight' >> Logs/Track/SegmentTypeStraight
cat Log.txt | grep 'Damage' >> Logs/Vehicle/Damage

#Template, insert more
#cat Log.txt | grep ' ' >> Logs/
echo "Processing complete."
echo " "


if [ "$previewFiles" == "True" ]; 
then
cd Logs
echo "Previewing Log Files..."
echo "                       "
echo "-----------------------"
echo "                       "
sleep 2s


FILES=/usr/src/torcs/torcs-1.3.7/src/drivers/Maria/Logs/*

for d in $FILES ; do (cd "$d" && cat * && sleep 4s && clear); done

else
	echo "Preview disabled."
	echo " "
	echo "Operation complete."
	echo " "
	echo "Exiting..."
	sleep 1s
	exit 1

fi
