#!/bin/bash

opcion1(){
	#Configurar archivo para respaldo
	#  • Se le pedirá al usuario la ruta (absoluta) del archivo al cual quiere respaldar.
	#  • Se le pedirá al usuario el nombre que le quiere poner al archivo de respaldo. 
	
	echo "Escriba la ruta absoluta de donde esta el archivo"
    	echo "ej: /home/federico/archivo.txt"
    	
	# -p rellena la opcion
    	
	read -p archabsoluta
    	
	if [ -f "$archabsoluta"];
        then
        	#  • Se le pedirá al usuario el nombre que le quiere poner al archivo de respaldo. 
        	echo "Escriba el nuevo nombre de el archivo"
        	read newname
        
		#  • Se le preguntará si quiere o no comprimir el archivo a respaldar. Si la respuesta es SI, 
        	# entonces se deberá crear el respaldo comprimido, si la respuesta es NO entonces deberá 
        	# empaquetar el archivo sin comprimir. (Los respaldos se deberán hacer en la carpeta /media/sf_shared_host_folder/respaldos)

		echo "Quiere comprimir el archivo? y/n"
        	read anw
        	
		if ["$anw" = "y"];
            	then
            		if [ -d /media/sf_shared_host_folder/respaldos/ ];
            		then
                	tar -czf "/media/sf_shared_host_folder/respaldos/$newname" "$archabsoluta"
                	
			#  • Luego deberá listar la carpeta de respaldos.
                	
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
	fi
}
