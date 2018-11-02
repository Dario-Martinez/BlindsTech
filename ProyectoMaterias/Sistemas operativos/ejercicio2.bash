#!/bin/bash

source "ejercicio5.bash"

echo "Ingrese el mes de inicio"
read mes_inicio
echo "Ingrese el dia de inicio"
read dia_inicio
echo "Ingrese el anio de inicio"
read anio_inicio

fecha_inicio=$anio_inicio"-"$mes_inicio"-"$dia_inicio
fecha_inicio_toInteger=$(date -d $anio_inicio-$mes_inicio-$dia_inicio+"%Y-%m-%d")

echo "Ingrese el mes de finalizacion"
read mes_final
echo "Ingrese el dia de finalizacion"
read dia_final
echo "Ingrese el anio de finalizacion"
read anio_final

fecha_final=$anio_final"-"$mes_final"-"$dia_final
fecha_final_toInteger=$(date -d $anio_final-$mes_final-$dia_final+"%Y-%m-%d")

echo $fecha_inicio
echo $fecha_final

if [ -z "$fecha_inicio" ];
then
	echo "No ingreso la fecha de inicio, se mostraran todos los logins y logouts hasta la fecha de finalizacion."
	last -w -t $fecha_final

elif [ -z "$fecha_final" ];
then
	echo "No ingreso la fecha de finalizacion, se mostraran todos los logins y logouts a partir de la fecha de inicio."
	last -w -s $fecha_inicio

elif [ $fecha_inicio_toInteger -ge $fecha_final_toInteger ]; 
then
	echo "La fecha de inicio no puede ser mayor a la fecha final"
	bash ejercicio2.bash
else
	echo "Se mostraran todos los logins y logouts para el rango de fechas especificado."
	last -w -s $fecha_inicio -t $fecha_final
fi

loguear_ejecucion_de_script
