#!/bin/bash

PS3="O que não comer pra ficar igual o caike: "

select opt in Frango Arroz Chocolate; do
	if [ "$opt" == "Chocolate" ]; then
		echo "Acertou!"
		break
	else
		echo "Errou..."
		continue
	fi
done


