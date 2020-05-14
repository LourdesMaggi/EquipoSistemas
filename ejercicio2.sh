#!/bin/bash
function tamanio {
tama=$tam
if [ -z "$tama" ]
then 
	echo "no ingreso argumento"
else
	if [ -d "$tama" ]
	then
		echo "El argumento $tama es un directorio"
		echo "El tamaño de $tama es:"
		du -hs $tama	
	else
		echo "El argumento $tama no existe como directorio, se chequea si es un archivo"
		if [ -f "$tama" ]
		then
			echo "El argmuento es un archivo"
			echo "el tamaño de $tama es:"
			du -hs $tama
		else
			echo "Lo que ingreso tampoco es un archivo"
		fi
	fi
fi
}

PS3="Elija una opcion:"
OPCIONES="Calcular Volver Salir"
select opt in $OPCIONES; do
	if [ "$opt" = "Volver" ];
	then
		echo volviendo al menu principal
		exit 0
	elif [ "$opt" = "Calcular" ];
	then
		echo Ingrese Archivo o Directorio a Calcular
	       	read tam
		tamanio $tam	
	elif [ "$opt" = "Salir" ];
	then
		exit 1
	else
		clear
		echo Las opciones son:
		echo 1: CalcularTamanio
		echo 2: Volver 
		echo 3: Salir
	fi
done
