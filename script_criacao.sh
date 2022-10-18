#!/bin/bash

echo "Atualizando o servidor..."
apt-get update -y
apt-get upgrade -y

echo "Instalando o serviço de servidor web Apache"
apt-get install apache2 -y

echo "instalando o unzip"
apt-get install unzip

echo "baixando a aplicação"
cd /tmp/
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Extraindo os aruivos da aplicação no diretório padrão do apache"
unzip main.zip
cp -R /tmp/linux-site-dio-main/* /var/www/html/
