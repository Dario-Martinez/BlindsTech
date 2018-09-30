#!/bin/bash

opcion3() {
	echo "Ingrese los minutos"
	read mins

	echo "ingrese la hora"
	read horas

	echo "Ingrese elnumero del dia del mes"
	read dia

	echo "Ingrese el mes, del 1 al 12"
	read mes

	echo "Ingrese el dia de la semana del 0 al 6"
	echo "0 = Domingo, ..., 6 = Sabado"
	read dia_semana

	echo "Ingrese el comando que quiere atumatizar"
	read comando

	if [ -z "$mins" ];
	then
		$mins = "*"
	fi
	echo "el valor de los minutos es: $mins"

	$mins $horas $dia $mes $dia_semana $comando 
}
