#!/bin/bash

if [ $1 ]; then
	if [ -e $1 ]; then
		file_type=desconhecido
		if [ -f $1 ]; then
			file_type=arquivo;
		fi
		if [ -d $1 ]; then
			file_type=diretório;
		fi
		gravavel=-
		executavel=-
		legivel=-
		if [ -r $1 ]; then
			legivel=r
		fi
		if [ -w $1 ]; then
			gravavel=w
		fi
		if [ -x $1 ]; then
			executavel=x
		fi
		echo $1: $file_type "("${legivel}${gravavel}${executavel}")";
	else
		echo $1: inválido;
	fi
else
	echo Usar: ./check_file [Arquivo];
fi

