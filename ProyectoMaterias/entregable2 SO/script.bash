#!/bin/bash
clear
SEL=1
while [ $SEL -ne 0 ];
do
# Escribo las opciones del menu-
echo "                             "
echo "******************************************"
echo "*           Que quiere hacer?            *"
echo "*----------------------------------------*"
echo "* 0. Salir                               *"
echo "* 1. Configurar archivo para respaldo    *"
echo "* 2. Configurar directorio para respaldo *"
echo "* 3. Configurar CRON                     *"
echo "* 4. Listar crontab del usuario          *"
echo "******************************************"

# Mensaje de error
ERR_MSG="**** Esta opcion no es correcta ****"
#Lee la opcion
read SEL

case $SEL in
0) #Salir
    echo "Estas seguro que quiere salir? s/n"
	read OPC
	if [ "$OPC" = "s" ]
	then
		clear
		echo "**** Usted ha salido ****"
		echo "
                     █████████
  ███████          ███        ███
  █      █       ███             ███
   █      █    ██                   ██
    █     █   ██     ██      ██     ███
     █   █   █      ████    ████      ██
   █████████████                      ██
   █            █         █           ██
 ██             █   ██          ██    ██
██   ███████████     ██        ██     ██
█               █      ████████       ██
██              █                    ██
 █   ███████████                   ██
 ██          ████                 █
   ████████████   █████████████████

"
	else
		SEL=1
		clear
	fi
    ;;


1) #Configurar archivo para respaldo
#  • Se le pedirá al usuario la ruta (absoluta) del archivo al cual quiere respaldar.
#  • Se le pedirá al usuario el nombre que le quiere poner al archivo de respaldo. 
#  • Se le preguntará si quiere o no comprimir el archivo a respaldar. Si la respuesta es SI, entonces se deberá crear el respaldo comprimido, si la respuesta es NO entonces deberá empaquetar el archivo sin comprimir. (Los respaldos se deberán hacer en la carpeta /media/sf_shared_host_folder/respaldos)
#  • Luego deberá listar la carpeta de respaldos.
    echo "Escriba la ruta absoluta de donde esta el archivo"
    echo "ej: /home/federico/archivo.txt"
    read archabsoluta
    if []
    #que sea un ruta valida
    echo "Escriba el nombre que le quiere poner al archivo de respaldo" 
    read nombrespaldo
    #que sea un nombre de respaldo valido
 
    
2) #Configurar directorio para respaldo
#  • Se le pedirá al usuario la ruta (absoluta) del directorio al cual quiere respaldar.
#  • Se le pedirá al usuario el nombre que le quiere poner al archivo de respaldo. 
#  • Se le preguntará si quiere o no comprimir el directorio a respaldar. Si la respuesta es SI, entonces se deberá crear el respaldo comprimido, si la respuesta es NO entonces deberá empaquetar el directorio sin comprimir. (Los respaldos se deberán hacer en la carpeta /media/sf_shared_host_folder/respaldos)
#  • Luego deberá listar la carpeta de respaldos.


3) #Configurar CRON
#  • Se le pedirá al usuario la hora, el día, el mes, el año y el día de la semana. (para cualquiera de los casos si el usuario no ingresa nada entonces significa que aplica para todos).
#  • Se le pedirá al usuario el comando que quiere programar en la tarea. 
#  • Se deberá crear el CRON para la determinada configuración que eligió el usuario con el comando que se pasó. 


4) #Listar crontab del usuario
#  • Se listará el crontab del usuario. Si el usuario no tiene crontab configurado entonces se le advertirá con un mensaje. 
#  • Última modificación: jueves, 9 de agosto de 2018, 10:10


*) echo "$ERR_MSG"