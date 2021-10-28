#!/bin/bash
cd /mnt/c/Users/winda/Documents

ls -la |grep ^d
echo 'Introduzca nombre de la carpeta'
read carpeta

ruta='/mnt/c/Users/winda/OneDrive/Respaldos'

rsync -varuz --partial ${carpeta} ${ruta}
7z a -mhe=on -pK7MTKA98Y!Tbop -mx=5 ${ruta}/${carpeta}.7z ${ruta}/${carpeta} -sdel
