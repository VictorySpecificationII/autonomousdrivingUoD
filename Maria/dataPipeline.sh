#!/bin/bash

figlet -c "TORCS data pipeline script"

sleep 2s

echo "Welcome! This script will run the pipeline all the way from raw data"
echo "to Machine Learning ready data, aggregated, split, formatted, and"
echo "converted to CSV format."

sleep 3s
echo "***********************************************************"
echo "Separating data into sections based on the raw input log..."
echo "***********************************************************"
sleep 4s
echo "Current Working Directory: " $(pwd)
cd MLpipeline/9-Scripts/
./StepOne_PostRaceSort.sh

sleep 2s
sleep 3s
echo "***********************************************************"
echo "Stripping the tags from the data based on the sorted log..."
echo "***********************************************************"
sleep 4s
./StepTwo_StripTags.sh


sleep 3s
echo "**************************************************************"
echo "Converting captured data to CSV format from the tagless log..."
echo "**************************************************************"
sleep 4s

./StepThree_MergeFiles.sh

sleep 3s
echo "*************************************************************"
echo "			Processing complete! Data is ML-Ready!             "
echo "*************************************************************"
sleep 4s
echo "Exiting..."
sleep 2s
exit

