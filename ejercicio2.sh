#!/bin/bash
echo "Ingrese Carpeta o Archivo para ver su tamaño"
read var
var=$var
if [ -z "$var" ]
then 
	echo "no ingreso argumento"
else
	if [ -d "$var" ]
	then
		echo "El argumento $var es un directorio"
		echo "El tamaño de $var es:"
		du -hs $var	
	else
		echo "El argumento $var no existe como directorio, se chequea si es un archivo"
		if [ -f "$var" ]
		then
			echo "El argmuento es un archivo"
			echo "el tamaño de $var es:"
			du -hs $var
		else
			echo "Lo que ingreso tampoco es un archivo"
		fi
	fi
fi
