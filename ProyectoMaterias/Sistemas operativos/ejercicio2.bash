#!/bin/bash
source "ejercicio5.bash"

echo "Ingrese el mes de inicio"
read mes_inicio
echo "Ingrese el dia de inicio"
read dia_inicio
echo "Ingrese el anio de inicio"
read anio_inicio

fecha_inicio=$mes_consulta_inicio"-"$dia_consulta_inicio"-"$anio_consulta_inicio
fecha_inicio_toInteger=$(date -d $mes_consulta_inicio-$dia_consulta_inicio-$anio_consulta_inicio+"%m%d%Y")
echo "Ingrese el mes de finalizacion"
read mes_final
echo "Ingrese el dia de finalizacion"
read dia_final
echo "Ingrese el anio de finalizacion"
read anio_final

fecha_final=$mes_consulta_final"-"$dia_consulta_final"-"$anio_consulta_final
fecha_final_toInteger=$(date -d $mes_consulta_final-$dia_consulta_final-$anio_consulta_final+"%m%d%Y")
echo $fecha_inicio
echo $fecha_final

if [ $fecha_inicio_toInteger -ge $fecha_final_toInteger ]; 
then
	echo "La fecha de inicio no puede ser mayor a la fecha final"
	bash ejercicio2.bash
else
	last -f /var/log/wtmp.1 -s $fecha_inicio -t $fecha_final
fi

loguear_ejecucion_de_script
