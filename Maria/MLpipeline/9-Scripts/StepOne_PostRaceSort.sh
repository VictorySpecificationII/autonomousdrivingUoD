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
	
	cat Log.txt | grep 'ABSAssistance' >> ../1-Sorted/Logs/Vehicle/ABSAssistance
	cat Log.txt | grep 'TCLAssistance' >> ../1-Sorted/Logs/Vehicle/TCLAssistance
	
	cat Log.txt | grep 'DownforceCoefficientInit' >> ../1-Sorted/Logs/General/DownforceCoefficientInit
	cat Log.txt | grep 'DragCoefficientInit' >> ../1-Sorted/Logs/General/DragCoefficientInit
	
	cat Log.txt | grep 'RideZero' >> ../1-Sorted/Logs/Vehicle/RideZero
	cat Log.txt | grep 'RideOne' >> ../1-Sorted/Logs/Vehicle/RideOne
	cat Log.txt | grep 'RideTwo' >> ../1-Sorted/Logs/Vehicle/RideTwo
	cat Log.txt | grep 'RideThree' >> ../1-Sorted/Logs/Vehicle/RideThree
	
	cat Log.txt | grep 'BrkTempZero' >> ../1-Sorted/Logs/Vehicle/BrkTempZero
	cat Log.txt | grep 'BrkTempOne' >> ../1-Sorted/Logs/Vehicle/BrkTempOne
	cat Log.txt | grep 'BrkTempTwo' >> ../1-Sorted/Logs/Vehicle/BrkTempTwo
	cat Log.txt | grep 'BrkTempThree' >> ../1-Sorted/Logs/Vehicle/BrkTempThree
	
	cat Log.txt | grep 'WheelSpinVelZero' >> ../1-Sorted/Logs/Vehicle/WheelSpinVelZero
	cat Log.txt | grep 'WheelSpinVelOne' >> ../1-Sorted/Logs/Vehicle/WheelSpinVelOne
	cat Log.txt | grep 'WheelSpinVelTwo' >> ../1-Sorted/Logs/Vehicle/WheelSpinVelTwo
	cat Log.txt | grep 'WheelSpinVelThree' >> ../1-Sorted/Logs/Vehicle/WheelSpinVelThree
	
	cat Log.txt | grep 'WheelSlipSideZero' >> ../1-Sorted/Logs/Vehicle/WheelSlipSideZero
	cat Log.txt | grep 'WheelSlipSideOne' >> ../1-Sorted/Logs/Vehicle/WheelSlipSideOne
	cat Log.txt | grep 'WheelSlipSideTwo' >> ../1-Sorted/Logs/Vehicle/WheelSlipSideTwo
	cat Log.txt | grep 'WheelSlipSideThree' >> ../1-Sorted/Logs/Vehicle/WheelSlipSideThree
	
	cat Log.txt | grep 'WheelSlipAccelZero' >> ../1-Sorted/Logs/Vehicle/WheelSlipAccelZero
	cat Log.txt | grep 'WheelSlipAccelOne' >> ../1-Sorted/Logs/Vehicle/WheelSlipAccelOne
	cat Log.txt | grep 'WheelSlipAccelTwo' >> ../1-Sorted/Logs/Vehicle/WheelSlipAccelTwo
	cat Log.txt | grep 'WheelSlipAccelThree' >> ../1-Sorted/Logs/Vehicle/WheelSlipAccelThree
	
	cat Log.txt | grep 'WheelFxZero' >> ../1-Sorted/Logs/General/SessionDetail
	cat Log.txt | grep 'WheelFxOne' >> ../1-Sorted/Logs/General/SessionDetail
	cat Log.txt | grep 'WheelFxTwo' >> ../1-Sorted/Logs/General/SessionDetail
	cat Log.txt | grep 'WheelFxThree' >> ../1-Sorted/Logs/General/SessionDetail
	
	cat Log.txt | grep 'WheelFyZero' >> ../1-Sorted/Logs/General/SessionDetail
	cat Log.txt | grep 'WheelFyOne' >> ../1-Sorted/Logs/General/SessionDetail
	cat Log.txt | grep 'WheelFyTwo' >> ../1-Sorted/Logs/General/SessionDetail
	cat Log.txt | grep 'WheelFyThree' >> ../1-Sorted/Logs/General/SessionDetail
	
	cat Log.txt | grep 'WheelFzZero' >> ../1-Sorted/Logs/General/SessionDetail
	cat Log.txt | grep 'WheelFzOne' >> ../1-Sorted/Logs/General/SessionDetail
	cat Log.txt | grep 'WheelFzTwo' >> ../1-Sorted/Logs/General/SessionDetail
	cat Log.txt | grep 'WheelFzThree' >> ../1-Sorted/Logs/General/SessionDetail	
	
	cat Log.txt | grep 'TyreZeroTempInner' >> ../1-Sorted/Logs/Vehicle/TyreZeroTempInner
	cat Log.txt | grep 'TyreOneTempInner' >> ../1-Sorted/Logs/Vehicle/TyreOneTempInner
	cat Log.txt | grep 'TyreTwoTempInner' >> ../1-Sorted/Logs/Vehicle/TyreTwoTempInner
	cat Log.txt | grep 'TyreThreeTempInner' >> ../1-Sorted/Logs/Vehicle/TyreThreeTempInner
	
	cat Log.txt | grep 'TyreZeroTempMiddle' >> ../1-Sorted/Logs/Vehicle/TyreZeroTempMiddle
	cat Log.txt | grep 'TyreOneTempMiddle' >> ../1-Sorted/Logs/Vehicle/TyreOneTempMiddle
	cat Log.txt | grep 'TyreTwoTempMiddle' >> ../1-Sorted/Logs/Vehicle/TyreTwoTempMiddle
	cat Log.txt | grep 'TyreThreeTempMiddle' >> ../1-Sorted/Logs/Vehicle/TyreThreeTempMiddle
	
	cat Log.txt | grep 'TyreZeroTempOuter' >> ../1-Sorted/Logs/Vehicle/TyreZeroTempOuter
	cat Log.txt | grep 'TyreOneTempOuter' >> ../1-Sorted/Logs/Vehicle/TyreOneTempOuter
	cat Log.txt | grep 'TyreTwoTempOuter' >> ../1-Sorted/Logs/Vehicle/TyreTwoTempOuter
	cat Log.txt | grep 'TyreThreeTempOuter' >> ../1-Sorted/Logs/Vehicle/TyreThreeTempOuter
	
	cat Log.txt | grep 'TyreZeroCondition' >> ../1-Sorted/Logs/Vehicle/TyreZeroCondition
	cat Log.txt | grep 'TyreOneCondition' >> ../1-Sorted/Logs/Vehicle/TyreOneCondition
	cat Log.txt | grep 'TyreTwoCondition' >> ../1-Sorted/Logs/Vehicle/TyreTwoCondition
	cat Log.txt | grep 'TyreThreeCondition' >> ../1-Sorted/Logs/Vehicle/TyreThreeCondition
	
	cat Log.txt | grep 'NgnRPM' >> ../1-Sorted/Logs/Vehicle/NgnRPM
	
	cat Log.txt | grep 'EngineRPMred' >> ../1-Sorted/Logs/General/SessionDetail
	cat Log.txt | grep 'EngineRPMmax' >> ../1-Sorted/Logs/General/SessionDetail
	cat Log.txt | grep 'EngineRPMMaxTq' >> ../1-Sorted/Logs/General/SessionDetail
	cat Log.txt | grep 'EngineMaxTq' >> ../1-Sorted/Logs/General/SessionDetail
	cat Log.txt | grep 'EngineMaxPw' >> ../1-Sorted/Logs/General/SessionDetail
	
	cat Log.txt | grep 'SkidIntensityZero' >> ../1-Sorted/Logs/Vehicle/SkidIntensityZero
	cat Log.txt | grep 'SkidIntensityOne' >> ../1-Sorted/Logs/Vehicle/SkidIntensityOne
	cat Log.txt | grep 'SkidIntensityTwo' >> ../1-Sorted/Logs/Vehicle/SkidIntensityTwo
	cat Log.txt | grep 'SkidIntensityThree' >> ../1-Sorted/Logs/Vehicle/SkidIntensityThree
	
	cat Log.txt | grep 'WheelReactionZero' >> ../1-Sorted/Logs/Vehicle/WheelReactionZero
	cat Log.txt | grep 'WheelReactionOne' >> ../1-Sorted/Logs/Vehicle/WheelReactionOne
	cat Log.txt | grep 'WheelReactionTwo' >> ../1-Sorted/Logs/Vehicle/WheelReactionTwo
	cat Log.txt | grep 'WheelReactionThree' >> ../1-Sorted/Logs/Vehicle/WheelReactionThree

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
