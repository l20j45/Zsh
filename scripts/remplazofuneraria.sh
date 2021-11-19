#!/bin/bash

ls | grep funeraria_impreciones
echo 'Introduzca nombre de la carpeta'
read carpeta

rm funeraria_impreciones.swf funeraria_impreciones_OLD.swf 2>/dev/null
mv $carpeta funeraria_impreciones.swf
echo "se remplazo el funeraria impresiones"
