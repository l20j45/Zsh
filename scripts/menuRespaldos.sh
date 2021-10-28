#!/bin/bash
 
# Codigo que muestra como gestionar un menu desde consola.
# http://www.lawebdelprogramador.com
 
# Muestra el menu general

function pause(){
   read -p "$*"
}

_menu()
{
    echo "Selecciona una opcion:"
    echo
    echo "1) Instancia respaldo"
    echo "2) Respaldo Parcial Disco D"
    echo "3) respaldoParcialMisdocumentos"
    echo "4) respaldoParcialMisdocumentossincomprimir"
    echo "5) Opcion 5"
    echo
    echo "9) Salir"
    echo
    echo -n "Indica una opcion: "
}
 
# Muestra la opcion seleccionada del menu
_mostrarResultado()
{
    clear
    echo ""
    echo "------------------------------------"
    echo "Has seleccionado la opcion $1"
    echo "------------------------------------"
    echo ""
}
 
# opcion por defecto
opc="0"
 
# bucle mientas la opcion indicada sea diferente de 9 (salir)
until [ "$opc" -eq "9" ];
do
    case $opc in
        1)
            _mostrarResultado $opc
			echo "Respaldo disco D"
			bash respaldoParcialDiscoD.sh
			pause 'Press [Enter] key to continue...'
            _menu
            ;;
        2)
            _mostrarResultado $opc
			echo "Respaldo mis documentos sin comprimir"
			bash respaldoParcialMisdocumentos.sh
			pause 'Press [Enter] key to continue...'
            _menu
            ;;
        3)
            _mostrarResultado $opc
			echo "Respaldo mis documentos comprimido"
			bash respaldoParcialMisdocumentossincomprimir.sh
			pause 'Press [Enter] key to continue...'
            _menu
            ;;
        4)
            _mostrarResultado $opc
			echo "respaldo multimedia"
            bash respaldoParcialMultimedia.sh
			pause 'Press [Enter] key to continue...'
            _menu
            ;;
        5)
            _mostrarResultado $opc
			pause 'Press [Enter] key to continue...'
            _menu
            ;;
        *)
            # Esta opcion se ejecuta si no es ninguna de las anteriores
            clear
            _menu
            ;;
    esac
    read opc
done
