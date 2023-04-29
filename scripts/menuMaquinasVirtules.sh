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
    echo "1) Prender servidor personal1"
    echo "2) Apagar servidor personal1"
    echo "3) Prender servidor personal2"
    echo "4) Apagar servidor personal2"
    echo "5) Prender servidor personal3"
    echo "6) Apagar servidor personal3"
    echo "7) Prender servidor personal4"
    echo "8) Apagar servidor personal4"
    echo "9) Prender servidor Clase"
    echo "10) Apagar servidor clase"
    echo "11) Opcion 5"
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
opc="12"
 
# bucle mientas la opcion indicada sea diferente de 9 (salir)
until [ "$opc" -eq "0" ];
do
    case $opc in
        1)
            _mostrarResultado $opc
			echo "Prendiendo el servidor personal1"
			VBoxManage.exe startvm ServPers --type headless
			echo "Prendido"
			pause 'Press [Enter] key to continue...'
            _menu
            ;;
        2)
            _mostrarResultado $opc
			echo "Apagando el servidor personal1"
			VBoxManage.exe controlvm ServPers poweroff
			echo "Apagando"
			pause 'Press [Enter] key to continue...'
            _menu
            ;;
	3)
            _mostrarResultado $opc
                        echo "Prendiendo el servidor personal2"
                        VBoxManage.exe startvm ServPers2 --type headless
                        echo "Prendido"
                        pause 'Press [Enter] key to continue...'
            _menu
            ;;
        4)
            _mostrarResultado $opc
                        echo "Apagando el servidor personal2"
                        VBoxManage.exe controlvm ServPers2 poweroff
                        echo "Apagando"
                        pause 'Press [Enter] key to continue...'
            _menu
            ;;
	5)
            _mostrarResultado $opc
                        echo "Prendiendo el servidor personal3"
                        VBoxManage.exe startvm ServPers3 --type headless
                        echo "Prendido"
                        pause 'Press [Enter] key to continue...'
            _menu
            ;;
        6)
            _mostrarResultado $opc
                        echo "Apagando el servidor personal3"
                        VBoxManage.exe controlvm ServPers3 poweroff
                        echo "Apagando"
                        pause 'Press [Enter] key to continue...'
            _menu
            ;;
	7)
            _mostrarResultado $opc
                        echo "Prendiendo el servidor personal3"
                        VBoxManage.exe startvm ServPers4 --type headless
                        echo "Prendido"
                        pause 'Press [Enter] key to continue...'
            ;;
	8)
            _mostrarResultado $opc
                        echo "Apagando el servidor personal3"
                        VBoxManage.exe controlvm ServPers3 poweroff
                        echo "Apagando"
                        pause 'Press [Enter] key to continue...'
            ;;
        9)
            _mostrarResultado $opc
			echo "Prendiendo el servidor clase"
			VBoxManage.exe startvm Ubuntu --type headless
			echo "Prendido"
			pause 'Press [Enter] key to continue...'
            _menu
            ;;
        10)
            _mostrarResultado $opc
			echo "Prendiendo el servidor Apagando"
			VBoxManage.exe controlvm Ubuntu poweroff
			echo "Apagando"
			pause 'Press [Enter] key to continue...'
            _menu
            ;;
       11)
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
