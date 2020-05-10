#!/bin/bash
#Para este ejercicio hay que modificar el archivo .bash_profile
#y agregar la ruta del bash que estamos creando a continuación.

user=$(whoami)
if [ "$user" = 'servidor' ]
	then
		echo "Bienvenido Nicolas Ezequiel Luzardo Montes de Oca" 
	else
		echo "Usted no es Nicolas Ezequiel Luzardo Montes de Oca"
fi

