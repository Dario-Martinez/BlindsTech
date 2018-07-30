#!/bin/bash

source "ejercicio5.bash"

echo "Ingrese el usuario: "
read usuario

if [-n "$usuario"];
then
	last "$usuario" | grep "$usuario"
	if [$! -eq 0];
	then
		echo "Se encontraron usuarios"
	else
		echo "No se encontraron regitros para este usuario en wtmp"
	fi
else
	echo "No se ingreso ningun usuario. Se listaran todos los logins del sistema"
	last -f /var/log/wtmp.1
fi

"loguear_ejecucion_de_script"
