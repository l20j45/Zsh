#!/bin/sh
 
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
    echo "1) Prender servidor personal"
    echo "2) Apagar servidor personal"
    echo "3) Prender servidor Clase"
    echo "4) Apagar servidor clase"
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
			echo "Prendiendo el servidor personal"
			VBoxManage.exe startvm ServPers --type headless
			echo "Prendido"
			pause 'Press [Enter] key to continue...'
            _menu
            ;;
        2)
            _mostrarResultado $opc
			echo "Apagando el servidor personal"
			VBoxManage.exe controlvm ServPers poweroff
			echo "Apagando"
			pause 'Press [Enter] key to continue...'
            _menu
            ;;
        3)
            _mostrarResultado $opc
			echo "Prendiendo el servidor clase"
			VBoxManage.exe startvm Ubuntu --type headless
			echo "Prendido"
			pause 'Press [Enter] key to continue...'
            _menu
            ;;
        4)
            _mostrarResultado $opc
			echo "Prendiendo el servidor Apagando"
			VBoxManage.exe controlvm Ubuntu poweroff
			echo "Apagando"
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
