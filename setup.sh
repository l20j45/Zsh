#/bin/bash

#instalar estos paquetes antes de trabajar

sudo apt update
sudo apt upgrade
sudo apt update

sudo apt install pv
sudo apt install p7zip-full
sudo apt install p7zip-rar
sudo apt install speedtest-cli
sudo apt install youtube-dl
sudo apt install ffmpeg
sudo apt install net-tools
sudo apt install unzip
sudo apt install python3-pip
sudo apt install xlsx2csv
sudo apt install ghostscript
sudo apt install lftp

pip install mysql-connector-python
pip install pyperclip
pip install termcolor

# abrir el archivo de configuraciones de lftp
# sudo nano /etc/lftp.conf
# agregar la siguiente linea
# set ftp:ssl-allow false
