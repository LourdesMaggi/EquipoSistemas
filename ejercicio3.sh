#!/bin/bash
function posidir {
posidir=$posi
if [ -z "$posidir" ]
then
	echo "No ingreso un argumento"
	echo "Si elige la opcion Carpeta, deberá ingresar el nombre del directorio"
else

	if [ -d "$posidir" ]
	then
		echo "Lo que ingreso es un directorio"
	else
		echo "El directorio que ingreso no existe"
	fi
fi
}

function posific {
posific=$posf
if [ -z "$posific" ]
then
	echo "No ingreso un argumento"
	echo "Si elige la opción Archivo, deberá ingresar el nombre del fichero"
else
	if [ -f "$posific" ]
	then 
		echo "Lo que ingreso es un fichero"
	else
		echo "El fichero que ingreso no existe"
	fi
fi	
}

OPCIONES="Archivo Carpeta Volver Salir"
PS3="Elija una opción: "
select opt in $OPCIONES; do
	if [ "$opt" = "Salir" ];
	then
		exit 1
	elif [ "$opt" = "Volver" ];
	then
		echo volviendo al menu principal
		exit 0

	elif [ "$opt" = "Carpeta" ];
	then
		echo Ingrese directorio a chequear
	       	read posi
		posidir $posi
	elif [ "$opt" = "Archivo" ];
	then
		echo Ingrese Fichero a chequear
	       	read posf
		posific $posf
	else
		clear
		echo Las opciones son:
		echo 1: Archivo
		echo 2: Carpeta
		echo 3: Volver al menu principal
		echo 3: Salir
	fi
done
