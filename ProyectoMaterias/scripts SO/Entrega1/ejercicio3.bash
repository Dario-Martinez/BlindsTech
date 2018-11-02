#!/bin/bash
source "ejercicio5.bash"

if [ -f "/media/sf_shared_host_folder/respaldos" ];
then
	fecha= $(date "+%Y/%m/%d-%H:%m")
	ruta_home="/media/sf_shared_host_folder/respaldos/respaldo_home_$fecha.tar.gz"
	tar -czvf "$ruta_home" "/home"
	echo "El usuario: $user a hecho un respaldo en: $ruta_home." >> /var/log/mis_respaldos
fi

loguear_ejecucion_de_script
