#!/bin/bash
cd /mnt/c/Users/winda/Documents

ls -la |grep ^d
echo 'Introduzca nombre de la carpeta'
read carpeta

ruta='/mnt/c/Users/winda/OneDrive/Respaldos'


rsync -varuz --partial ${carpeta} ${ruta}
