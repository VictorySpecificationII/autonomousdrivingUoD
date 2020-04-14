#!/bin/bash

previewFiles="False"

mkdir -p Logs
cat Log.txt | grep 'SessionDetail' >> Logs/SessionDetails
cat Log.txt | grep 'Stuck' >> Logs/Stuck
cat Log.txt | grep 'Steering' >> Logs/Steering
cat Log.txt | grep 'Gear' >> Logs/Gearing
cat Log.txt | grep 'Throttle' >> Logs/Throttling
cat Log.txt | grep 'Brake' >> Logs/Braking
cat Log.txt | grep 'TrackAngle' >> Logs/TrackAngle
cat Log.txt | grep 'Yaw' >> Logs/Yaw
cat Log.txt | grep 'RemainingFuel' >> Logs/RemainingFuel
cat Log.txt | grep 'MassWithFuelUpdate' >> Logs/MassWithFuelUpdate
cat Log.txt | grep 'VehicleSpeed' >> Logs/VehicleSpeed
cat Log.txt | grep 'SpeedX' >> Logs/VehicleSpeedX
cat Log.txt | grep 'PositionX' >> Logs/PositionX
cat Log.txt | grep 'PositionY' >> Logs/PositionY
#Template, insert more
#cat Log.txt | grep ' ' >> Logs/

cd Logs

if [ "$previewFiles" == "True" ]; 
then
echo "Previewing Log Files..."
echo "                       "
echo "-----------------------"
echo "                       "
sleep 3s

FILES=/usr/src/torcs/torcs-1.3.7/src/drivers/Maria/Logs/*
for f in $FILES
do
  echo "Processing $f file..."
  # take action on each file. $f store current file name
  cat $f && sleep 2s && clear
done
fi
