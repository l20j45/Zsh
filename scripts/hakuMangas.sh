#!/bin/bash

ls > directorios.dat

while IFS= read -r line
do
  zip -r "$line".zip "$line"
done < directorios.dat
rm directorios.dat

ls -d */ >> carpetas.dat

mkdir directory

while IFS= read -r line
do
  mv "$line" directory/
done < carpetas.dat
rm carpetas.dat


mkdir mangaComprimido
for f in *.zip; do mv -- "$f" "${f%.zip}.cbr"; done
mv *.cbr mangaComprimido
