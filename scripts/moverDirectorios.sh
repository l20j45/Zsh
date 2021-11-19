#!/bin/bash

crear directorio
mkdir -p directory 

ls -d */ >> carpetas.dat

while IFS= read -r line
do
  mv "$line" directory/ 2>/dev/null
done < carpetas.dat
rm carpetas.dat
