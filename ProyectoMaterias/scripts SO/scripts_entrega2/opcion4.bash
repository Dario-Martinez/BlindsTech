#!/bin/bash

opcion4() {
	echo "Se mostrara el crontab del usuario logueado"
	crontab -u $user -l
}
