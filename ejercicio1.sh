#!/bin/bash
function directorio {
if [ -z $1 ]
then
	echo No ingreso un argumento
else

	if [ -d $1 ]
	then
		echo El directorio $1 existe
	else
		echo El directorio $1 no existe
	fi
fi
}

function fichero {
if [-z $1]
then
	echo "No ingreso un argumento"
else
	if [ -f $1 ]
	then 
		echo "Lo que ingreso es un fichero"
	else
		echo "El fichero $1 no existe"
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
		echo Ingrese directorio a chequear; read $1
		directorio $1 
	elif [ "$opt" = "Fichero" ];
	then
		echo Ingrese Fichero a chequear; read $1
		fichero $1
	else
		clear
		echo opcion erronea
	fi
done
