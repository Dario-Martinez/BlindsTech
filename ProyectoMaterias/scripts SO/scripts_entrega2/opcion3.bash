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

	echo "Ingrese el comando que quiere automatizar"
	read comando

	if [ -z "$mins" ];
	then
		$mins = "*"
	fi
	if [ -z "$horas" ];
	then
		$horas = "*"
	fi

	if [ -z "$dia" ];
	then
		$dia = "*"
	fi

	if [ -z "$dia_semana" ];
	then
		$dia_semana = "*"
	fi

	if [ -z "$mes" ];
	then
		$mes = "*"
	fi
	
	echo "los valores ingresados son: "
	echo "Minutos: $mins"
	echo "Horas: $horas"
	echo "Dia: $dia"
	echo "Dia de la semana: $dia_semana"
	echo "mes: $mes"
	echo "Comando a automatizar: $comando"

	crontab -e

	$mins $horas $dia $mes $dia_semana $comando	
}
