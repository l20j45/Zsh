#!/usr/bin/bash
cd '/mnt/c/Users/winda/Documents/archivos_softsolutions/Instancias_de_trabajo/Instancias_nuevas'
ls -la |grep ^d
echo 'Introduzca nombre de la carpeta'
read carpeta

hora=$(date +'%d-%m-%y-%T')
ruta='/mnt/c/Users/winda/OneDrive/Trabajo/Instancias/tequila_tabasco'
nombreArchivo=$carpeta
intermedio="procesamiento"

rsync -varuz --partial ${carpeta} ${intermedio}/
rm -r ${intermedio}/${nombreArchivo}/bin/reg/*
rm ${intermedio}/${nombreArchivo}/modules_funeraria/"funeraria_impreciones.swf"
rsync -varuz --partial funeraria_impreciones.swf ${intermedio}/${nombreArchivo}/modules_funeraria/
7z a ${intermedio}/${carpeta}_$hora.7z ${intermedio}/${nombreArchivo} 
mv ${intermedio}/${carpeta}_$hora.7z ${ruta}/
explorer.exe  "C:\Users\winda\OneDrive\Trabajo\Instancias\tequila_tabasco"
