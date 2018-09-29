#!/bin/bash

opcion2(){
	
	echo "Escriba la ruta absoluta en donde esta el directorio"
    	echo "ej: /home/alumno"
    	
	# -p rellena la opcion
    	
	read -p rutabsoluta
    	
	if [ -d "$rutabsoluta"];
        then 
        	echo "Escriba el nuevo nombre del directorio"
        	read newname

		echo "Quiere comprimir el directorio? y/n"
        	read anw
        	
		if ["$anw" = "y"];
            	then
            		if [ -d /media/sf_shared_host_folder/respaldos/ ];
            		then
                	tar -czf "/media/sf_shared_host_folder/respaldos/$newname" "$archabsoluta"
                	
			ls "/media/sf_shared_host_folder/respaldos"
            		else
				mkdir "/media/sf_shared_host_folder/respaldos/"
            		fi
		else
			if [ /d /media/sf_shared_host_folder/respaldos/ ];
			then
				tar -cf "/media/sf_shared_host_folder/respaldos/$newname" "$archabsoluta"
				ls "/media/sf_shared_host_folder/respaldos/"
			else
				mkdir "/media/sf_shared_host_folder/respaldos/"
			fi
		fi
	else
		echo "El directorio no existe o la ruta no finaliza con un directorio"
		echo "Intente de nuevo"
		sudo bash opcion2.bash
	fi
}
