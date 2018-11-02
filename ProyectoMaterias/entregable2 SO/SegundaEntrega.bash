#!/bin/bash
source ./opcion1.bash
source ./opcion2.bash
source ./opcion3.bash
source ./opcion4.bash

if [ $(id -u) -eq 0];
then
    




    declare -a opciones=("Salir" "Configurar archivo para respaldo" "Configurar directorio para respaldo" "Configurar CRON" "Listar crontab del usuario")
    PS3="Por favor seleccione la opcion deseada: "

    select opcion in "${opciones[@]}"
    do 
        if [ "$REPLY" = "1" ]
        then
        brake   
        fi
            #Aca la variable "$opcion" va a tener el String de cada opcion: "Salir","Confi..."...
            #echo "La opcion seleccionada es : $opcion"

            #Aca la variable $REPLY va a tener el numero de opcion que se selecciono: 1, 2, 3...
            #echo "Usted selecciono la opcion numero: $REPLY"
        
        if [ "$REPLY" = "2" ]
        then
            opcion1
        fi
        if [ "$REPLY" = "3" ]
        then
            opcion2
        fi
        if [ "$REPLY" = "4" ]
        then
            opcion3
        fi
        if [ "$REPLY" = "5" ]
        then
            opcion4
        fi
    
    done

else 
    echo "Ejectue el archivo como root"
fi
