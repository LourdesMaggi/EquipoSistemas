#!/bin/bash
function fichero() {
if [ -f $1 ]
then
return 0
else
return 1
fi
}
echo "ingrese el nombre de un fichero" ; read f
if fichero $f
then
echo "$f existe"
else
echo "$f no existe"
fi


