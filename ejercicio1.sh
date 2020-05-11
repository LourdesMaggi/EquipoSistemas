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

function pesofichero {
pesofichero=$ficp
if [ -z "$pesofichero" ]
then
	echo "no ingreso un argumento"
else
	if [ -f $pesofichero ]
	then
		echo "El fichero que ingresó pesa:"
		ls -hs $pesofichero
	else
		echo "El fichero que ingresó no existe"
	fi
fi
}


PS3="Elija una opcion:"
OPCIONES="Directorio Fichero PesoFichero Salir"
select opt in $OPCIONES; do
	if [ "$opt" = "Salir" ];
	then
		clear
		echo "Saliendo del programa"
		exit
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
	elif [ "$opt" = "PesoFichero" ];
	then
		echo Ingrese Fichero a chequear
			read ficp
		pesofichero $ficp
	else
		echo opcion erronea
		echo Las opciones son:
		echo 1: Directorio
		echo 2: Fichero
		echo 3: PesoFichero
		echo 4: Volver al menu principal
	fi
done
