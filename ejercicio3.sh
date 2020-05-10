#!/bin/bash
var=$1
if [ -z "$var" ]
	then
		echo "no ingreso un argumento, las posibles opciones son:"
		echo "$0 nombre_archivo"
		echo "$0 nombre_directorio"
	elif [ -d $var ]
	then
		echo "$var es un directorio"
	elif [ -f $var ]
	then
		echo "$var es un archivo"

	fi
