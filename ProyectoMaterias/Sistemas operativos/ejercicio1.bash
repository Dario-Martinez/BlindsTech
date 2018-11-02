#!/bin/bash

source "ejercicio5.bash"

echo "Ingrese el usuario: "
read usuario

if [ -n "$usuario" ];
then
	echo "Se  mostrara la fecha y hora de los logins y logouts del usuario que ingreso"
	last -F -w"$usuario" | grep "$usuario"

	if [ "$!" -eq 0 ];
	then
		echo "Se encontraron usuarios"
	else
		echo "No se encontraron regitros para este usuario en wtmp"
	fi
else
	echo "No se ingreso ningun usuario. Se listaran todos los logins y logouts del sistema"
	last -F -w
fi

loguear_ejecucion_de_script
