#!/bin/bash

echo "borrando archivo"
rm funeraria_impresiones_personalizado.swf
echo "reemplazando archivo"
find . -iname "*\\$1*" -exec mv "{}" funeraria_impresiones_personalizado.swf  \;


