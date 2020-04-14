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
cat Log.txt | grep 'Damage' >> Logs/Vehicle/Damage
cat Log.txt | grep 'DistanceFromStartLine' >> Logs/Vehicle/DistanceFromStartLine
cat Log.txt | grep 'AllowedSegmentSpeedStraight' >> Logs/Track/AllowedSegmentSpeedStraight
cat Log.txt | grep 'AllowedSegmentSpeedTurn' >> Logs/Track/AllowedSegmentSpeedTurn
cat Log.txt | grep 'ArcOfTurn' >> Logs/Track/ArcOfTurn
cat Log.txt | grep 'SegmentType' >> Logs/Track/SegmentType
cat Log.txt | grep 'SegmentWidth' >> Logs/Track/SegmentWidth
cat Log.txt | grep 'SegmentRadius' >> Logs/Track/SegmentRadius
cat Log.txt | grep 'CoefficientOfFriction' >> Logs/Track/CoefficientOfFriction
cat Log.txt | grep 'RPMredline' >> Logs/Vehicle/RPMredline
cat Log.txt | grep 'CurrentGrRatio' >> Logs/Vehicle/CurrentGrRatio
cat Log.txt | grep 'GetAccel' >> Logs/Vehicle/GetAccel
cat Log.txt | grep 'DistanceToEndOfSegment' >> Logs/Vehicle/DistanceToEndOfSegment
cat Log.txt | grep 'BrkDist' >> Logs/Vehicle/BrakeDistance
cat Log.txt | grep 'GShiftOmega' >> Logs/Vehicle/GearshiftOmega
cat Log.txt | grep 'SlipOnWheelDuringBraking0' >> Logs/Vehicle/SlipOnWheel0DuringBraking
cat Log.txt | grep 'SlipOnWheelDuringBraking1' >> Logs/Vehicle/SlipOnWheel1DuringBraking
cat Log.txt | grep 'SlipOnWheelDuringBraking2' >> Logs/Vehicle/SlipOnWheel2DuringBraking
cat Log.txt | grep 'SlipOnWheelDuringBraking3' >> Logs/Vehicle/SlipOnWheel3DuringBraking
cat Log.txt | grep 'SlipOver4WheelsDuringBraking' >> Logs/Vehicle/SlipOver4WheelsDuringBraking
cat Log.txt | grep 'ABSAssistance' >> Logs/Vehicle/ABSAssistance
cat Log.txt | grep 'TCLAssistance' >> Logs/Vehicle/TCLAssistance




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
