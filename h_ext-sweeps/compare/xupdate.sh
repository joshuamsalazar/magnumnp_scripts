#!/bin/bash

#To update the preliminar results to plot them

# Get current location
path0=$(pwd)

# Set folder to the first argument, default to 'korg_1.2' if not provided
folder=${1:-korg_1.2}

cd ../$folder || { echo "Failed to change directory to ../$folder"; exit 1; }

./xdatsweep.sh
cp datsweep.dat ${path0}/datsweep_${folder}.dat || { echo "Failed to copy file"; exit 1; }
