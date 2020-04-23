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

	 if [ "$filename" == "Yaw" ]; 
		then
			firstLine+="${filename}"
		else
			firstLine+="${filename}, "
	fi
done

#echo "$firstLine" | tr -d ', ' > output.txt
#sleep 3s
echo $(pwd)
paste -d "," * >> output.txt
