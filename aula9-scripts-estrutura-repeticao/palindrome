#!/bin/bash

while read line; do

	words=$(echo $line | sed "s/[^a-z]//g")
	reverse=$(echo $words | rev)

	if [ "$words" = "$reverse" ]; then
		echo Yes
	else
		echo No
	fi
done

