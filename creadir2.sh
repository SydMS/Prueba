#!/bin/bas
#Este script creará un directorio y un fichero.
#Debe recibir como parametros el directorio y fichero. Se debe validar que se han incluido los parametros necesarios.
echo "Introduce el nombre de tu diretorio y fichero"
read param1 param2
if [[ $param1="" || $param2="" ]]
	then echo "Debes introducir los dos nombres. Por favor, vuelve a ejecutar el script."
else
	mkdir $HOME/$param1
	touch $HOME/$param1/$param2".txt"
	echo "Se han creado correctamente."
fi
