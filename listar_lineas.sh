#!/bin/bash
#Este script va a contar las líneas que incluyan los ficheros del directorio que le pasemos.
#echo "Introduce el directorio:"
#read a
#for line in `ls $a`
#	do
#		if [ -f $line ]
#			then
#				#echo "El fichero " $line " tiene " ; wc -l $line ; " lineas."
#			else
#				echo "No hay ficheros en la ubicación."
#		if
#	done


if ! [ $# -eq 1 ]
	then 
		echo "Dame un directorio como argumento."
else
	if ! [ -d $1 ]
		then 
			echo "El argumento debe ser un directorio."
	else
		for k in `ls $1`
		do
			if [ -f $1/$k ]
				then 
				 echo -n "Fichero : " $k "Líneas " ; wc -l < $1/$k
			fi
		done
	fi
fi
