#!/bin/bash

echo "Try to guess the number I thought!"

mynumber=$(($RANDOM %1000 + 1))

echo -n "Choose a number (1 to 1000):"
read guess

until [ $mynumber -eq $guess ]; do
	if [ $mynumber -gt $guess ]; then
		echo "My number is higher than "$guess""
	fi
	if [ $mynumber -lt $guess ]; then
		echo "My number is lower than "$guess""
	fi
	echo -n "Choose a number (1 to 1000): "
	read guess
done

echo "Congratulations, you guessed correctly"


