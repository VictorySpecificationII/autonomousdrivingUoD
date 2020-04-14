#!/bin/bash

figlet -c "TORCS data pipeline script"

sleep 2s

echo "Welcome! This script will run the pipeline all the way from raw data"
echo "to Machine Learning ready data, aggregated, split, formatted, scaled"
echo "and regularized, if required."

sleep 3s
echo "Separating data into sections based on the raw input log..."
sleep 1s
echo "Current Working Directory: " $(pwd)
cd MLpipeline/9-Scripts/
./StepOne_PostRaceSort.sh

sleep 2s
echo "Work in progress; Script to strip logs down to bare values."