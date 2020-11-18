#!/bin/bash

if [ $# -ne 3 ]; then
	echo Usar: ./calc [Número] [Operador] [Número];
	exit 1;
fi

num1=$1
op=$2
num2=$3

case $op in
	+)
		echo "$num1 + $num2" | bc -l
		;;
	-)
		echo "$num1 - $num2" | bc -l
		;;
	x)
		echo "$num1 * $num2" | bc -l
		;;
	/)
		echo "$num1 / $num2" | bc -l
		;;
	*)
		echo $op: Operador inválido. Operadores válidos: +, -, x, /
		;;
esac
