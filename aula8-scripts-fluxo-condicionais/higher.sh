#!/bin/bash

echo -n Primeiro número: 
read num1
echo -n Segundo número: 
read num2
echo -n Terceiro número: 
read num3

maior=$num1
if [ $num2 -gt $maior ]; then
	maior=$num2
fi
if [ $num3 -gt $maior ]; then
	maior=$num3
fi

echo O maior número é o $maior
