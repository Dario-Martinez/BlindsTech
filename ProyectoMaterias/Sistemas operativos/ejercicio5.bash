#!/bin/bash
if [-f "/var/log/historial_de_respaldos"];
then
	loguear_ejecucion_de_script(){
	echo "El $user ejecuto el script en la fecha: $fecha." >> /var/log/historial_de_respaldos
        }
else
	mkdir /var/log/historial_de_respaldos
