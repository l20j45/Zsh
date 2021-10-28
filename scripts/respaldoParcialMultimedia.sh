#!/bin/bash
cd /mnt/e/multimedia
ls
echo 'Introduzca nombre de la carpeta'
read carpeta

ruta='/mnt/c/Users/L20j45/OneDrive/Multimedia'

rsync -varuz --partial ${carpeta} ${ruta}
