#!/bin/bash
PS3="Elija una opcion:"
OPCIONES="Ejercicio1 Ejercicio2 Ejercicio3 Ejercicio4 Ejercicio5 Ejercicio6 Salir"
select opt in $OPCIONES; do
	if [ "$opt" = "Salir" ];
	then
		clear
		echo "Saliendo del programa"
		exit
	elif [ "$opt" = "Ejercicio1" ];
	then
		echo Abriendo Ejercicio1
	       	./ejercicio1.sh
	elif [ "$opt" = "Ejercicio2" ];
	then
		echo Abriendo Ejercicio2
	       	./ejercicio2.sh
	elif [ "$opt" = "Ejercicio3" ];
	then
		echo Abriendo Ejercicio3
		./ejercicio3.sh
	else
		echo opcion erronea
		echo Las opciones son:
		echo 1: Ejercicio1
		echo 2: Ejercicio2
		echo 3: Ejercicio3
		echo 4: Ejercicio4
		echo 5: Ejercicio5
		echo 6: Ejercicio6
		echo 7: Salir
	fi
done
