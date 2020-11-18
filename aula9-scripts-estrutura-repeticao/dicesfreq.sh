#!/bin/bash

if [ $# -ne 1 ]; then
	echo "Usar: ./dicesfreq [freq]"
	exit 1
elif [ $1 -lt 0 ]; then
	echo "Argumento "$1" deve ser maior que zero."
	exit 1
fi

for (( i=1; i <= $1 ; i++ )); do
	echo "Dice "$i": "$(($RANDOM % 6 + 1))" "
done
