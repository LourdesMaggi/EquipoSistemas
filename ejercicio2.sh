#!/bin/bash
echo "Ingrese un directorio"
read $1
if [ -d $1 ]
then 
	echo "este directorio pesa:"
	du -h $1
else
	echo "no ingreso un directorio"
fi
echo "ahora intente con un archivo"
read $2
if [ -f $2 ]
then 
	echo "este archivo pesa:"
	du -h $2
else
	echo "no ingreso un archivo"
fi
