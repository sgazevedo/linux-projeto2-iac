#!/bin/bash

echo "Obtendo atualizações disponíveis..."
apt-get update
echo "Atualizações obtidas."

echo "Instalando as novas atualizações disponíveis..."
apt-get upgrade -y
echo "Atualizações instaladas."

echo "Instalando o serviço do Apache..."
apt-get install apache2 -y
echo "Serviço do Apache instalado"

echo "Instalando o unzip..."
apt-get install unzip -y
echo "Unzip instalado."

echo "Realizando downloads dos arquivos da página do serviço apache..."
cd /tmp/
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
echo "Arquivos baixados."

echo "Descompactando arquivos baixados..."
unzip main.zip
echo "Arquivos descompactados."

echo "Copiando os arquivos para o serviço do apache..."
cd linux-site-dio-main/
cp -R * /var/www/html/
echo "Arquivos copiados."




