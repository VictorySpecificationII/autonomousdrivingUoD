#!/bin/bash

previewFiles="False"

FILE=/usr/src/torcs/torcs-1.3.7/src/drivers/Maria/MLpipeline/0-Raw/Log.txt

if test -f "$FILE"; then
    echo " "
    echo "$FILE"
    echo " "
    echo "Status: Exists on your filesystem."
    sleep 2s
    echo " "
    echo "Information: Proceeding..."
    echo " "
else	
	echo " "
	echo "$FILE"
	echo " "
	echo "Status: Does not exist on your filesystem."
	echo " "
	echo "Information: Enable datalogging in driver.cpp, compile and run, then re-run this script."
	echo " "
	echo "Exiting..."
	exit 130
fi
 echo " "
 echo "Current Working Directory: " $(pwd)
 echo " "
 echo "Process: Creating directories..."
 cd ..
 mkdir -p '1-Sorted'
 cd '1-Sorted'
 echo " "
 echo "Current Working Directory: " $(pwd)
 mkdir -p Logs
 cd Logs
 echo " "
 echo "Current Working Directory: " $(pwd)
 mkdir -p General
 mkdir -p Vehicle
 mkdir -p Track
 mkdir -p Timing
 cd ../../0-Raw
 echo " "
 echo "Current Working Directory: " $(pwd)
 sleep 2s
 echo " "
 echo "Process: Processing raw data log..."
 echo " "
 sleep 2s

 	cat Log.txt | grep 'SessionDetail' >> ../1-Sorted/Logs/General/SessionDetail
	cat Log.txt | grep 'Stuck' >> ../1-Sorted/Logs/Vehicle/Stuck
	cat Log.txt | grep 'Steer' >> ../1-Sorted/Logs/Vehicle/Steer
	cat Log.txt | grep 'Gear' >> ../1-Sorted/Logs/Vehicle/Gear
	cat Log.txt | grep 'Throttle' >> ../1-Sorted/Logs/Vehicle/Throttle
	cat Log.txt | grep 'Brake' >> ../1-Sorted/Logs/Vehicle/Brake
	
	cat Log.txt | grep 'TrackAngle' >> ../1-Sorted/Logs/Vehicle/TrackAngle
	
	cat Log.txt | grep 'Yaw' >> ../1-Sorted/Logs/Vehicle/Yaw
	cat Log.txt | grep 'Roll' >> ../1-Sorted/Logs/Vehicle/Roll
	cat Log.txt | grep 'Pitch' >> ../1-Sorted/Logs/Vehicle/Pitch
	cat Log.txt | grep 'R_Y' >> ../1-Sorted/Logs/Vehicle/R_Y
	
	cat Log.txt | grep 'RemainingFuel' >> ../1-Sorted/Logs/Vehicle/RemainingFuel
	cat Log.txt | grep 'MassWithFuelUpdate' >> ../1-Sorted/Logs/Vehicle/MassWithFuelUpdate
	
	cat Log.txt | grep 'SpeedX' >> ../1-Sorted/Logs/Vehicle/SpeedX
	cat Log.txt | grep 'SpeedY' >> ../1-Sorted/Logs/Vehicle/SpeedY
	cat Log.txt | grep 'SpeedZ' >> ../1-Sorted/Logs/Vehicle/SpeedZ
	cat Log.txt | grep 'AccelX' >> ../1-Sorted/Logs/Vehicle/AccelX
	cat Log.txt | grep 'AccelY' >> ../1-Sorted/Logs/Vehicle/AccelY
	cat Log.txt | grep 'AccelZ' >> ../1-Sorted/Logs/Vehicle/AccelZ
	
	cat Log.txt | grep 'PositionX' >> ../1-Sorted/Logs/Vehicle/PositionX
	cat Log.txt | grep 'PositionY' >> ../1-Sorted/Logs/Vehicle/PositionY
	cat Log.txt | grep 'PositionZ' >> ../1-Sorted/Logs/Vehicle/PositionZ
	
	cat Log.txt | grep 'Damage' >> ../1-Sorted/Logs/Vehicle/Damage
	
	cat Log.txt | grep 'DistanceFromStartLine' >> ../1-Sorted/Logs/Vehicle/DistanceFromStartLine
	cat Log.txt | grep 'DistanceToEndOfSegment' >> ../1-Sorted/Logs/Vehicle/DistanceToEndOfSegment
	
	cat Log.txt | grep 'SegmentType' >> ../1-Sorted/Logs/Track/SegmentType
	cat Log.txt | grep 'SegmentWidth' >> ../1-Sorted/Logs/Track/SegmentWidth
	cat Log.txt | grep 'SegmentRadius' >> ../1-Sorted/Logs/Track/SegmentRadius
	cat Log.txt | grep 'SegmentLength' >> ../1-Sorted/Logs/Track/SegmentLength
	cat Log.txt | grep 'CoefficientOfFriction' >> ../1-Sorted/Logs/Track/CoefficientOfFriction
	
	cat Log.txt | grep 'CurrentGrRatio' >> ../1-Sorted/Logs/Vehicle/CurrentGrRatio
	
	####cat Log.txt | grep 'BrkDist' >> ../1-Sorted/Logs/Vehicle/BrakeDistance###DISABLEDUNTILIFIGUREOUTAFIX
	
	cat Log.txt | grep 'SlipOnWheelDuringBraking0' >> ../1-Sorted/Logs/Vehicle/SlipOnWheelDuringBraking0
	cat Log.txt | grep 'SlipOnWheelDuringBraking1' >> ../1-Sorted/Logs/Vehicle/SlipOnWheelDuringBraking1
	cat Log.txt | grep 'SlipOnWheelDuringBraking2' >> ../1-Sorted/Logs/Vehicle/SlipOnWheelDuringBraking2
	cat Log.txt | grep 'SlipOnWheelDuringBraking3' >> ../1-Sorted/Logs/Vehicle/SlipOnWheelDuringBraking3
	cat Log.txt | grep 'SlipOver4WheelsDuringBraking' >> ../1-Sorted/Logs/Vehicle/SlipOver4WheelsDuringBraking
	
	cat Log.txt | grep 'ABSAssistance' >> ../1-Sorted/Logs/Vehicle/ABSAssistance
	cat Log.txt | grep 'TCLAssistance' >> ../1-Sorted/Logs/Vehicle/TCLAssistance
	
	cat Log.txt | grep 'DownforceCoefficientInit' >> ../1-Sorted/Logs/General/DownforceCoefficientInit
	cat Log.txt | grep 'DragCoefficientInit' >> ../1-Sorted/Logs/General/DragCoefficientInit
	
	cat Log.txt | grep 'Ride0' >> ../1-Sorted/Logs/Vehicle/Ride0
	cat Log.txt | grep 'Ride1' >> ../1-Sorted/Logs/Vehicle/Ride1
	cat Log.txt | grep 'Ride2' >> ../1-Sorted/Logs/Vehicle/Ride2
	cat Log.txt | grep 'Ride3' >> ../1-Sorted/Logs/Vehicle/Ride3
	
	cat Log.txt | grep 'BrkTemp0' >> ../1-Sorted/Logs/Vehicle/BrkTemp0
	cat Log.txt | grep 'BrkTemp1' >> ../1-Sorted/Logs/Vehicle/BrkTemp1
	cat Log.txt | grep 'BrkTemp2' >> ../1-Sorted/Logs/Vehicle/BrkTemp2
	cat Log.txt | grep 'BrkTemp3' >> ../1-Sorted/Logs/Vehicle/BrkTemp3
	
	cat Log.txt | grep 'WheelSpinVel0' >> ../1-Sorted/Logs/Vehicle/WheelSpinVel0
	cat Log.txt | grep 'WheelSpinVel1' >> ../1-Sorted/Logs/Vehicle/WheelSpinVel1
	cat Log.txt | grep 'WheelSpinVel2' >> ../1-Sorted/Logs/Vehicle/WheelSpinVel2
	cat Log.txt | grep 'WheelSpinVel3' >> ../1-Sorted/Logs/Vehicle/WheelSpinVel3
	
	cat Log.txt | grep 'WheelSlipSide0' >> ../1-Sorted/Logs/Vehicle/WheelSlipSide0
	cat Log.txt | grep 'WheelSlipSide1' >> ../1-Sorted/Logs/Vehicle/WheelSlipSide1
	cat Log.txt | grep 'WheelSlipSide2' >> ../1-Sorted/Logs/Vehicle/WheelSlipSide2
	cat Log.txt | grep 'WheelSlipSide3' >> ../1-Sorted/Logs/Vehicle/WheelSlipSide3
	
	cat Log.txt | grep 'WheelSlipAccel0' >> ../1-Sorted/Logs/Vehicle/WheelSlipAccel0
	cat Log.txt | grep 'WheelSlipAccel1' >> ../1-Sorted/Logs/Vehicle/WheelSlipAccel1
	cat Log.txt | grep 'WheelSlipAccel2' >> ../1-Sorted/Logs/Vehicle/WheelSlipAccel2
	cat Log.txt | grep 'WheelSlipAccel3' >> ../1-Sorted/Logs/Vehicle/WheelSlipAccel3
	
	cat Log.txt | grep 'WheelFx0' >> ../1-Sorted/Logs/General/SessionDetail
	cat Log.txt | grep 'WheelFx1' >> ../1-Sorted/Logs/General/SessionDetail
	cat Log.txt | grep 'WheelFx2' >> ../1-Sorted/Logs/General/SessionDetail
	cat Log.txt | grep 'WheelFx3' >> ../1-Sorted/Logs/General/SessionDetail
	
	cat Log.txt | grep 'WheelFy0' >> ../1-Sorted/Logs/General/SessionDetail
	cat Log.txt | grep 'WheelFy1' >> ../1-Sorted/Logs/General/SessionDetail
	cat Log.txt | grep 'WheelFy2' >> ../1-Sorted/Logs/General/SessionDetail
	cat Log.txt | grep 'WheelFy3' >> ../1-Sorted/Logs/General/SessionDetail
	
	cat Log.txt | grep 'WheelFz0' >> ../1-Sorted/Logs/General/SessionDetail
	cat Log.txt | grep 'WheelFz1' >> ../1-Sorted/Logs/General/SessionDetail
	cat Log.txt | grep 'WheelFz2' >> ../1-Sorted/Logs/General/SessionDetail
	cat Log.txt | grep 'WheelFz3' >> ../1-Sorted/Logs/General/SessionDetail	
	
	cat Log.txt | grep 'Tyre0TempInner' >> ../1-Sorted/Logs/Vehicle/Tyre0TempInner
	cat Log.txt | grep 'Tyre1TempInner' >> ../1-Sorted/Logs/Vehicle/Tyre1TempInner
	cat Log.txt | grep 'Tyre2TempInner' >> ../1-Sorted/Logs/Vehicle/Tyre2TempInner
	cat Log.txt | grep 'Tyre3TempInner' >> ../1-Sorted/Logs/Vehicle/Tyre3TempInner
	
	cat Log.txt | grep 'Tyre0TempMiddle' >> ../1-Sorted/Logs/Vehicle/Tyre0TempMiddle
	cat Log.txt | grep 'Tyre1TempMiddle' >> ../1-Sorted/Logs/Vehicle/Tyre1TempMiddle
	cat Log.txt | grep 'Tyre2TempMiddle' >> ../1-Sorted/Logs/Vehicle/Tyre2TempMiddle
	cat Log.txt | grep 'Tyre3TempMiddle' >> ../1-Sorted/Logs/Vehicle/Tyre3TempMiddle
	
	cat Log.txt | grep 'Tyre0TempOuter' >> ../1-Sorted/Logs/Vehicle/Tyre0TempOuter
	cat Log.txt | grep 'Tyre1TempOuter' >> ../1-Sorted/Logs/Vehicle/Tyre1TempOuter
	cat Log.txt | grep 'Tyre2TempOuter' >> ../1-Sorted/Logs/Vehicle/Tyre2TempOuter
	cat Log.txt | grep 'Tyre3TempOuter' >> ../1-Sorted/Logs/Vehicle/Tyre3TempOuter
	
	cat Log.txt | grep 'Tyre0Condition' >> ../1-Sorted/Logs/Vehicle/Tyre0Condition
	cat Log.txt | grep 'Tyre1Condition' >> ../1-Sorted/Logs/Vehicle/Tyre1Condition
	cat Log.txt | grep 'Tyre2Condition' >> ../1-Sorted/Logs/Vehicle/Tyre2Condition
	cat Log.txt | grep 'Tyre3Condition' >> ../1-Sorted/Logs/Vehicle/Tyre3Condition
	
	cat Log.txt | grep 'NgnRPM' >> ../1-Sorted/Logs/Vehicle/NgnRPM
	cat Log.txt | grep 'EngineRPMred' >> ../1-Sorted/Logs/Vehicle/EngineRPMred
	cat Log.txt | grep 'EngineRPMmax' >> ../1-Sorted/Logs/Vehicle/EngineRPMmax
	cat Log.txt | grep 'EngineRPMMaxTq' >> ../1-Sorted/Logs/Vehicle/EngineRPMMaxTq
	cat Log.txt | grep 'EngineMaxTq' >> ../1-Sorted/Logs/Vehicle/EngineMaxTq
	cat Log.txt | grep 'EngineMaxPw' >> ../1-Sorted/Logs/Vehicle/EngineMaxPw
	
	cat Log.txt | grep 'SkidIntensity0' >> ../1-Sorted/Logs/Vehicle/SkidIntensity0
	cat Log.txt | grep 'SkidIntensity1' >> ../1-Sorted/Logs/Vehicle/SkidIntensity1
	cat Log.txt | grep 'SkidIntensity2' >> ../1-Sorted/Logs/Vehicle/SkidIntensity2
	cat Log.txt | grep 'SkidIntensity3' >> ../1-Sorted/Logs/Vehicle/SkidIntensity3
	
	cat Log.txt | grep 'WheelReaction0' >> ../1-Sorted/Logs/Vehicle/WheelReaction0
	cat Log.txt | grep 'WheelReaction1' >> ../1-Sorted/Logs/Vehicle/WheelReaction1
	cat Log.txt | grep 'WheelReaction2' >> ../1-Sorted/Logs/Vehicle/WheelReaction2
	cat Log.txt | grep 'WheelReaction3' >> ../1-Sorted/Logs/Vehicle/WheelReaction3

	cat Log.txt | grep 'BestLapTime' >> ../1-Sorted/Logs/Timing/BestLapTime
	cat Log.txt | grep 'DeltaBest' >> ../1-Sorted/Logs/Timing/DeltaBest
	cat Log.txt | grep 'CurrentLapTime' >> ../1-Sorted/Logs/Timing/CurrentLapTime
	cat Log.txt | grep 'PerLpTime' >> ../1-Sorted/Logs/Timing/PerLpTime
	cat Log.txt | grep 'TopSpeed' >> ../1-Sorted/Logs/Timing/TopSpeed
	cat Log.txt | grep 'CurrentMinSpeedForLap' >> ../1-Sorted/Logs/Timing/CurrentMinSpeedForLap
	cat Log.txt | grep 'AmountOfLs' >> ../1-Sorted/Logs/Timing/AmountOfLs
	cat Log.txt | grep 'RemainingLaps' >> ../1-Sorted/Logs/Timing/RemainingLaps
	cat Log.txt | grep 'TimeBehindLeader' >> ../1-Sorted/Logs/Timing/TimeBehindLeader
	cat Log.txt | grep 'LapsBehindLeader' >> ../1-Sorted/Logs/Timing/LapsBehindLeader
	cat Log.txt | grep 'TimeBehindPrev' >> ../1-Sorted/Logs/Timing/TimeBehindPrev
	cat Log.txt | grep 'TimeBehindNext' >> ../1-Sorted/Logs/Timing/TimeBehindNext


# #Template, insert more
# #cat Log.txt | grep '' >> ../1-Sorted/Logs//
 echo " "
 echo "Process: Complete."
 echo " "


 if [ "$previewFiles" == "True" ]; 
 then
 cd ../1-Sorted/Logs
 echo "Current Working Directory: " $(pwd)
 echo " "
 echo "Information: Previewing Log Files..."
 echo "                       "
 echo "-----------------------"
 echo "                       "
 sleep 2s


FILES=/usr/src/torcs/torcs-1.3.7/src/drivers/Maria/MLpipeline/1-Sorted/Logs/*

for d in $FILES ; do (cd "$d" && cat * && sleep 6s  && clear); done
 else
	echo " "
	echo "Information: Preview disabled."
	echo " "
	echo "Status: Operation complete."
	echo " "
	echo "Exiting..."
	sleep 1s
	exit 1

fi
