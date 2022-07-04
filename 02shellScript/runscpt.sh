#!/usr/bin/env bash

count=1

while true
do
	./scpt.sh 2> out.log
	if [[ $? -ne 0 ]]; then
		echo "failed after $count times"
		cat out.log
		break
	fi
	((count++))

done
