#!/bin/bash
rm junto.csv 2> /dev/null

ls *.xlsx > archivosexcel

while IFS= read -r line
do
  	xlsx2csv "$line" > "${line%.xlsx}.csv"
	cat "${line%.xlsx}.csv">>junto.csv
done < archivosexcel

rm archivosexcel 2> /dev/null

