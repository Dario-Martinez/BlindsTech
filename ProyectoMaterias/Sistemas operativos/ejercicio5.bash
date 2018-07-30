#!/bin/bash
loguear_ejecucion_de_script(){

if [-f "/var/log/historial_de_respaldos"];
then
	echo "El $user ejecuto el script en la fecha: $fecha." >> /var/log/historial_de_respaldos
        }
else
	mkdir /var/log/historial_de_respaldos
	bash ejercicio5.bash
fi
