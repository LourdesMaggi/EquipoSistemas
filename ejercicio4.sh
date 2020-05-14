#!/bin/bash
function quiensoy {
	cat ./bienvenida.sh
	echo "Para que este ejercicio sea funcional debera modificar el archivo .bash_profile"
	echo "Dentro del mismo es necesario indicar la ruta del script que mostramos como ejemplo"
}

PS3="Elija una opcion: "
OPCIONES="Bienvenida Volver Salir"
select opt in $OPCIONES; do
	if [ "$opt" = "Volver" ];
	then
		echo volviendo al menu principal
		exit 1
	elif [ "$opt" = "Bienvenida" ];
	then
		quiensoy
	elif [ "$opt" = "Salir" ];
	then
		exit 0
	else
		clear
		echo Las opciones son:
		echo 1: Bienvenida
		echo 2: Volver al menu principal
		echo 3: Salir
	fi
done
