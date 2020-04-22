#!/bin/bash


get_abs_filename() {
  # $1 : relative filename
  echo "$(cd "$(dirname "$1")" && pwd)/$(basename "$1")"
}

previewFiles="False"

DIR=/usr/src/torcs/torcs-1.3.7/src/drivers/Maria/MLpipeline/1-Sorted/Logs

if [[ -d "$DIR" ]]
then
	echo " " 
	echo "$DIR"
	echo " "
	echo "Status: Exists on your filesystem."
	sleep 2s
	echo " "
	echo "Information: Proceeding..."
	echo " "
else
	echo " "
	echo "$DIR"
	echo " "
	echo "Status: Does not exist on your filesystem."
	sleep 2s
	echo "Information: Did you run step one first?"
	echo " "
fi

echo " "
echo "Current Working Directory: " $(pwd)
echo " "
echo "Process: Creating Directories..."
echo " "
cd ..
mkdir '2-Tagless'
echo " "
cd '2-Tagless'
mkdir -p Logs
cd Logs
mkdir -p General
mkdir -p Track
mkdir -p Vehicle
mkdir -p Timing
cd ../../
cd '1-Sorted'
cd Logs
echo "Current Working Directory: " $(pwd)
FILES=/usr/src/torcs/torcs-1.3.7/src/drivers/Maria/MLpipeline/1-Sorted/Logs/*

head="["
tail="]: "
tag=""

for directory in $FILES; do
cd "$directory"
	for file in *; do
		basename "$file" # uncomment to print  file name

		#grabbing file details
		filename="$(basename -- $file)" #get filename
		abs_filepath=$(get_abs_filename "$file") #capture abs path 

		#creating string  for later use
		echo "$abs_filepath"
		tag="$head$filename$tail" # create string as a pattern to strip current file
		echo "$tag"

		#create temporary file
		tempfile=$(mktemp /tmp/"$file".XXXXXX)
		echo "Process: Stripping tags from file $file..."
                
		#copy contents of current file into temp file
                #find occurences of string created above in temp
                #delete occurences of string in temp
		sed 's/[^0-9.]//g' < "$file" > "$tempfile"
		echo "Process: Tags stripped."
		#Manipulate string to replace 1-sorted with 2-tagless
		targetDir="2-Tagless"
		targetAbsPath="${directory/1-Sorted/$targetDir}"
		#copy contents of temp file into the appropriate file
		cp  "$tempfile" "$targetAbsPath"
		rm "$tempfile"
done
done


taglessDIR=/usr/src/torcs/torcs-1.3.7/src/drivers/Maria/MLpipeline/2-Tagless/Logs/*

for dir in $taglessDIR; do
	cd "$dir"
		for file in *; do
		sleep 0.1s
		filename=$(basename -- "$file")
		echo " "
		echo "Original Filename: $filename"
		filename="${file%.*}"
		echo "Cut filename: $filename"
		extension=".txt"
		final="$filename$extension"
		echo "Finalname: $final"
		mv "$file" "$final"
done
done
