#!/bin/bash
function directorio {
directorio=$direc
if [ -z "$directorio" ]
then
	echo No ingreso un argumento
else

	if [ -d "$directorio" ]
	then
		echo "Lo que ingreso es un directorio"
	else
		echo "El directorio que ingreso no existe"
	fi
fi
}

function fichero {
fichero=$fich
if [ -z "$fichero" ]
then
	echo "No ingreso un argumento"
else
	if [ -f "$fichero" ]
	then 
		echo "Lo que ingreso es un fichero"
	else
		echo "El fichero que ingreso no existe"
	fi
fi	
}

OPCIONES="Directorio Fichero Volver"
select opt in $OPCIONES; do
	if [ "$opt" = "Volver" ];
	then
		echo volviendo al menu principal
		./menu.sh
	elif [ "$opt" = "Directorio" ];
	then
		echo Ingrese directorio a chequear
	       	read direc
		directorio $direc
	elif [ "$opt" = "Fichero" ];
	then
		echo Ingrese Fichero a chequear
	       	read fich 
		fichero $fich
	else
		clear
		echo opcion erronea
		echo Las opciones son:
		echo 1: Directorio
		echo 2: Fichero
		echo 3: Volver al menu principal
	fi
done
