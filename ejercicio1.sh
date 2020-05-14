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
PS3="Elija una opcion"
OPCIONES="Directorio Fichero Volver Salir"
select opt in $OPCIONES; do
	if [ "$opt" = "Volver" ];
	then
		echo volviendo al menu principal
		exit 0
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
	elif [ "$opt" = "Salir" ];
	then
		exit 1
	else
		clear
		echo Las opciones son:
		echo 1: Directorio
		echo 2: Fichero
		echo 3: Volver al menu principal
		echo 4: Salir
	fi
done
