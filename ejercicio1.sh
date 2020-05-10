#!/bin/bash
if [ -z $1 ]
then
	echo "Debe ingresar un argumento"
else
	if [ -d $1 ]
	then
		echo "Esto si es un directorio"
	else
		echo "No es un directorio, se chequea si es un fichero"
		if [ -f $1 ]
		then
			echo "si es un archivo"
		else
			echo "tampoco es un archivo"
		fi
	fi
fi
