#!/bin/bash

opcion1(){ 
	
	echo "Escriba la ruta absoluta en donde esta el archivo"
    	echo "ej: /home/alumno/archivo_ejemplo.txt"    	
	read rutabsoluta
    	
	if [ -f "$rutabsoluta" ];
        then
        	echo "Escriba el nuevo nombre de el archivo"
        	read newname

		echo "Quiere comprimir el archivo? y/n"
        	read anw
        	
		if [ "$anw" = "y" ];
            	then
            		if [ -d /media/sf_shared_host_folder/respaldos/ ];
            		then
                	tar -czf "/media/sf_shared_host_folder/respaldos/$newname" "$rutabsoluta"
			ls "/media/sf_shared_host_folder/respaldos"
            		else
				mkdir "/media/sf_shared_host_folder/respaldos/"
            		fi
		else
			if [ /d /media/sf_shared_host_folder/respaldos/ ];
			then
				tar -cf "/media/sf_shared_host_folder/respaldos/$newname" "$rutabsoluta"
				ls "/media/sf_shared_host_folder/respaldos/"
			else
				mkdir "/media/sf_shared_host_folder/respaldos/"
			fi
		fi
	else
		echo "El archivo no existe o la ruta no finaliza en un archivo"
		echo "Intentelo de nuevo"
		
		bash opcion1.bash
	fi
}
