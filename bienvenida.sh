if [ "$(whoami)" = 'lourdes' ]
	then
		echo "Bienvenida Lourdes Maggi">>/dev/tty1
	else
		echo "Usted no es Lourdes Maggi">>/dev/tty1
fi
