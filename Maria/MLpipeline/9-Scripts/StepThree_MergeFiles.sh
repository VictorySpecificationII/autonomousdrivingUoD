#!/bin/bash

taglessDIR=/usr/src/torcs/torcs-1.3.7/src/drivers/Maria/MLpipeline/2-Tagless/Logs/*
result_DIR=/usr/src/torcs/torcs-1.3.7/src/drivers/Maria/MLpipeline/3-CSV
echo $(pwd)
cd ..
echo $(pwd)
mkdir -p 3-CSV
cd 3-CSV
echo $(pwd)

firstLine=""

for dir in $taglessDIR; do
	cd "$dir"
		for file in *; do
		cp "$file" "$result_DIR"
done
done

cd ../../../3-CSV
echo $(pwd)
rm SessionDetail.txt
rm DownforceCoefficientInit.txt
rm DragCoefficientInit.txt

for file in *; do
	sleep 0.1s
	filename=$(basename -- "$file")
	echo " "
	echo "Original Filename: $filename"
	filename="${file%.*}"
	echo "Cut filename: $filename"
	#open file and inline edit add name of file in first row
	sed -i '1 i\'"$filename" "$file"
done

#final step, merge all into one CSV file
echo $(pwd)
paste -d "," * >> Final.txt
echo $(pwd)

mkdir -p ../4-Final
mv Final.txt ../4-Final/
