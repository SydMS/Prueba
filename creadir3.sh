#!/bin/bash
#Este script creará un directorio y un fichero.
#Debe recibir como parametros el directorio y fichero. Se debe validar que se han incluido los parametros necesarios.
echo "Introduce el nombre de tu diretorio y fichero"
read param1 param2
if [[ -z $param1 || -z $param2 ]]
	#-z para ver que no sea una cadena vacía. || es un OR.
	then echo "Debes introducir los dos datos. Por favor, vuelve a ejecutar el script."
		elif [ -d $HOME/$param1 ]
			#-e comprueba que el fichero exista. -d comprueba que el parametro existe y es un directorio.
			then echo "Este directorio ya existe."
	else
	mkdir $HOME/$param1
	touch $HOME/$param1/$param2".txt"
	echo "Se han creado correctamente."
fi
