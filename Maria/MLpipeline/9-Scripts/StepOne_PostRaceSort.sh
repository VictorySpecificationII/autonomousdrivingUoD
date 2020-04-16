#!/bin/bash

previewFiles="True"

FILE=/usr/src/torcs/torcs-1.3.7/src/drivers/Maria/MLpipeline/0-Raw/Log.txt

if test -f "$FILE"; then
   echo " "
    echo "$FILE exists. Processing..."
    echo " "
else
	echo "$FILE does not exist; Datalogging is disabled in driver.cpp"
	echo ""
	echo "Enable datalogging, compile and run, then re run this script."
	echo " "
	echo "Exiting..."
	exit 130
fi
 echo " "
 echo "Current Working Directory: " $(pwd)
 echo " "
 echo "Creating directories..."
 cd ../1-Sorted
 echo " "
 echo "Current Working Directory: " $(pwd)
 mkdir -p Logs
 cd Logs
 echo " "
 echo "Current Working Directory: " $(pwd)
 mkdir -p General
 mkdir -p Vehicle
 mkdir -p Track
 cd ../../0-Raw
 echo " "
 echo "Current Working Directory: " $(pwd)
 sleep 2s
 echo " "
 echo "Processing raw data log..."
 echo " "
 sleep 2s

 	cat Log.txt | grep 'SessionDetail' >> ../1-Sorted/Logs/General/SessionDetails
	cat Log.txt | grep 'Stuck' >> ../1-Sorted/Logs/Vehicle/Stuck
	cat Log.txt | grep 'Steering' >> ../1-Sorted/Logs/Vehicle/Steering
	cat Log.txt | grep 'Gear' >> ../1-Sorted/Logs/Vehicle/Gearing
	cat Log.txt | grep 'Throttle' >> ../1-Sorted/Logs/Vehicle/Throttling
	cat Log.txt | grep 'Brake' >> ../1-Sorted/Logs/Vehicle/Braking
	cat Log.txt | grep 'TrackAngle' >> ../1-Sorted/Logs/Vehicle/TrackAngle
	cat Log.txt | grep 'Yaw' >> ../1-Sorted/Logs/Vehicle/Yaw
	cat Log.txt | grep 'RemainingFuel' >> ../1-Sorted/Logs/Vehicle/RemainingFuel
	cat Log.txt | grep 'MassWithFuelUpdate' >> ../1-Sorted/Logs/Vehicle/MassWithFuelUpdate
	cat Log.txt | grep 'VehicleSpeed' >> ../1-Sorted/Logs/Vehicle/VehicleSpeed
	cat Log.txt | grep 'SpeedX' >> ../1-Sorted/Logs/Vehicle/VehicleSpeedX
	cat Log.txt | grep 'PositionX' >> ../1-Sorted/Logs/Vehicle/PositionX
	cat Log.txt | grep 'PositionY' >> ../1-Sorted/Logs/Vehicle/PositionY
	cat Log.txt | grep 'Damage' >> ../1-Sorted/Logs/Vehicle/Damage
	cat Log.txt | grep 'DistanceFromStartLine' >> ../1-Sorted/Logs/Vehicle/DistanceFromStartLine
	cat Log.txt | grep 'AllowedSegmentSpeedStraight' >> ../1-Sorted/Logs/Track/AllowedSegmentSpeedStraight
	cat Log.txt | grep 'AllowedSegmentSpeedTurn' >> ../1-Sorted/Logs/Track/AllowedSegmentSpeedTurn
	cat Log.txt | grep 'ArcOfTurn' >> ../1-Sorted/Logs/Track/ArcOfTurn
	cat Log.txt | grep 'SegmentType' >> ../1-Sorted/Logs/Track/SegmentType
	cat Log.txt | grep 'SegmentWidth' >> ../1-Sorted/Logs/Track/SegmentWidth
	cat Log.txt | grep 'SegmentRadius' >> ../1-Sorted/Logs/Track/SegmentRadius
	cat Log.txt | grep 'CoefficientOfFriction' >> ../1-Sorted/Logs/Track/CoefficientOfFriction
	cat Log.txt | grep 'RPMredline' >> ../1-Sorted/Logs/Vehicle/RPMredline
	cat Log.txt | grep 'CurrentGrRatio' >> ../1-Sorted/Logs/Vehicle/CurrentGrRatio
	cat Log.txt | grep 'DistanceToEndOfSegment' >> ../1-Sorted/Logs/Vehicle/DistanceToEndOfSegment
	####cat Log.txt | grep 'BrkDist' >> ../1-Sorted/Logs/Vehicle/BrakeDistance###DISABLEDUNTILIFIGUREOUTAFIX

	cat Log.txt | grep 'SlipOnWheelDuringBraking0' >> ../1-Sorted/Logs/Vehicle/SlipOnWheel0DuringBraking
	cat Log.txt | grep 'SlipOnWheelDuringBraking1' >> ../1-Sorted/Logs/Vehicle/SlipOnWheel1DuringBraking
	cat Log.txt | grep 'SlipOnWheelDuringBraking2' >> ../1-Sorted/Logs/Vehicle/SlipOnWheel2DuringBraking
	cat Log.txt | grep 'SlipOnWheelDuringBraking3' >> ../1-Sorted/Logs/Vehicle/SlipOnWheel3DuringBraking
	cat Log.txt | grep 'SlipOver4WheelsDuringBraking' >> ../1-Sorted/Logs/Vehicle/SlipOver4WheelsDuringBraking
	cat Log.txt | grep 'ABSAssistance' >> ../1-Sorted/Logs/Vehicle/ABSAssistance
	cat Log.txt | grep 'TCLAssistance' >> ../1-Sorted/Logs/Vehicle/TCLAssistance
	cat Log.txt | grep 'DownforceCoefficientInit' >> ../1-Sorted/Logs/General/DownforceCoefficientInit
	cat Log.txt | grep 'DragCoefficientInit' >> ../1-Sorted/Logs/General/DragCoefficientInit

# #Template, insert more
# #cat Log.txt | grep ' ' >> Logs/
 echo " "
 echo "Processing complete."
 echo " "


 if [ "$previewFiles" == "True" ]; 
 then
 cd ../1-Sorted/Logs
 echo "Current Working Directory: " $(pwd)
 echo " "
 echo "Previewing Log Files..."
 echo "                       "
 echo "-----------------------"
 echo "                       "
 sleep 2s


FILES=/usr/src/torcs/torcs-1.3.7/src/drivers/Maria/MLpipeline/1-Sorted/Logs/*

for d in $FILES ; do (cd "$d" && cat * && sleep 6s  && clear); done
 else
	echo " "
	echo "Preview disabled."
	echo " "
	echo "Operation complete."
	echo " "
	echo "Exiting..."
	sleep 1s
	exit 1

fi
