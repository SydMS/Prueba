#!/bin/bash
# Este script pide un número y lo muestra si es mayor que 4
echo "Has elegido el valor entero: " $1
a=$1
if [ $a -gt 4 ]
	then
	 echo "El valor es:" $a "es mayor que 4!"
fi
