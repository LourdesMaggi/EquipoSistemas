#!/bin/bash
function directorio {
echo "Ingrese nombre del Directorio"; read $1
if [ -z $1 ]
then
	echo "No ingreso un argumento"
else

	if [ -d $1 ]
		then
			echo "El directorio $1 existe"
	fi
fi
}

function fichero {
echo "Ingrese nombre del fichero"; read $1
if [ -f $1 ]
then 
	echo "Lo que ingreso es un fichero"
else
echo "El fichero $1 no existe"
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
		directorio
	elif [ "$opt" = "Fichero" ];
	then
		fichero
	else
		clear
		echo opcion erronea
	fi
done
