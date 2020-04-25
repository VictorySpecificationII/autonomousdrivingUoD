#!/bin/bash
cd MLpipeline
rm -r 1-Sorted
rm -r 2-Tagless
rm -r 3-CSV
cd ..
echo "Finished."
bash dataPipeline.sh
