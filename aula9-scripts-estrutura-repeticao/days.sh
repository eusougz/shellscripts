#!/bin/bash

for day in Mon Tue Wed Thu Fri Sat Sun; do
	echo -n "$day"
	if [ "$day" == "Sat" -o "$day" == "Sun" ]; then
		echo " (weekend)"
	else
		echo " (weekday)"
	fi
done


