#!/bin/bash

blanquear.sh
ls -la |grep ^d
echo 'Introduzca nombre de la carpeta'
read carpeta

mv ${carpeta}/* .
rm -rf ${carpeta}
