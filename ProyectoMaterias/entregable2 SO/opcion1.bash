#!/bin/bash

opcion1(){ 
	
	echo "Escriba la ruta absoluta en donde esta el archivo"
    	echo "ej: /home/alumno/archivo_ejemplo.txt"    	
	read rutabsoluta
    	
	if [ -f "$rutabsoluta" ];
        then
        	echo "Escriba el nombre que tendra el respaldo"
        	read newname

		echo "Quiere comprimir el archivo? y/n"
        	read anw
        	
		if [ "$anw" = "y" ];
            	then
            		if [ -d /media/sf_shared_host_folder/respaldos/ ];
            		then
                	tar -czf "/media/sf_shared_host_folder/respaldos/$newname" "$rutabsoluta"

			echo "A continuacion se mostraran los repaldos creados"
			ls "/media/sf_shared_host_folder/respaldos"
            		else
				mkdir "/media/sf_shared_host_folder/respaldos/"
            		fi
		else
			if [ -d /media/sf_shared_host_folder/respaldos/ ];
			then
				tar -cf "/media/sf_shared_host_folder/respaldos/$newname" "$rutabsoluta"
				echo "A continuacion se mostraran los respaldos creados"
				ls "/media/sf_shared_host_folder/respaldos/"
			else
				mkdir "/media/sf_shared_host_folder/respaldos/"
			fi
		fi
	else
		echo "El archivo no existe o la ruta no finaliza en un archivo"
	fi

	echo "Quiere volver al menu priiiincipal o quiere salir"
	delcare -a opciones=("salir" "Volver al menu principal")
	PS3 = "Por favor eliga una opcion: "

	select opcion in ${opciones[@]}
	do
		if [ "$REPLY" = "1" ];
		then
			break
		fi

		if [ "$REPLY" = "2" ];
		then
			sudo bash segunda_entrega.bash
			break
		fi
	done
}
