#!/bin/bash

set $(date)
IFS=:
set $4

comprimento="Bom dia"
if [ $1 -ge 12 ]; then
	comprimento="Boa tarde";
elif [ $1 -ge 18 ]; then
	comprimento="Boa noite"
fi


set $(cat /etc/passwd | grep $(whoami))

name=$5

echo $comprimento $name, seja bem vindo.
