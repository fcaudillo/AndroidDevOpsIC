##!/bin/bash

# Espera 10 segundos para que se acepte en el celular, que la pc a la cual se esta conectando, es una pc de confianza.
seg=0 
resp=`adb devices|sed -n '2,10p'|grep device|wc -l`
while (( $resp == 0 && $seg < 10 )); do 
   seg=$seg+1
   sleep 1
   echo "Esperando 1 seg"
   resp=`adb devices|sed -n '2,10p'|grep device|wc -l` 
done

if [ $resp == 1 ]; then
	echo "Instalar la app ", $1
	adb install $1
	cd $2
	./gradlew $3
	echo "Aplicacion instalada"
fi
