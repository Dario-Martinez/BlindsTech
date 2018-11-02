#!/bin/bash

source opcion1.bash
source opcion2.bash
source opcion3.bash
source opcion4.bash

if [ $(id -u) -eq 0 ];
then
	declare -a opciones=("Salir" "Configurar archivo para respaldo" "Configurar directorio para respaldo" "Configurar CRON" "Listar crontab del usuario")
	PS3="Por favor seleccione la opcion deseada: "

	select opcion in "${opciones[@]}"
	do
		if [ "$REPLY" = "1" ]
		then
			break
		fi
		
		if [ "$REPLY" = "2" ]
		then
			opcion1
			break
        	fi
        	
		if [ "$REPLY" = "3" ]
        	then
            		opcion2
	    		break
        	fi
        	
		if [ "$REPLY" = "4" ]
        	then
            		opcion3
	    		break
        	fi
        
		if [ "$REPLY" = "5" ]
        	then
            		opcion4
	    		break
        	fi
    
    	done

else 
    echo "Ejecute el archivo como root"
fi
