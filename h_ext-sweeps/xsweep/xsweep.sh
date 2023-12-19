#!/bin/bash

# Check if the number of arguments is either 4 or 5
if [ "$#" -ne 4 ] && [ "$#" -ne 5 ]; then
    echo "Usage: $0 script.py start end increment [optional: extra field value in miliTesla]"
    exit 1
fi

# Assigning command line arguments to variables
script=$1
start=$2
end=$3
increment=$4
extra_arg=${5:-} # Assigns $5 to extra_arg if provided, otherwise empty

# Looping over the range and increment
for ((i=start; i<=end; i+=increment)); do
    echo "Running: python3 $script $i $extra_arg"
    python3 "$script" "$i" "$extra_arg"
    echo "Finished running with argument $i $extra_arg"
done
