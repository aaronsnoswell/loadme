#!/bin/bash

# Get desired load level (optional, defaults to 1)
load_level=$1;
if [[ "$#" == "0" ]] ; then
	load_level=1;
fi

echo "Loading CPU $load_level time(s)..."
for ((i=0;i<$load_level;i++)) ; do
	bash -c "yes > /dev/null" &
done

# Kill all load processes on exit
trap 'echo ""; killall yes; echo Stopped;' EXIT;

read -n1 -p "Press any key to stop...";

