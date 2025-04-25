#!/bin/bash

echo "Atualizando pacotes do sistema..."
apt-get update -y
apt-get upgrade -y

echo "Instalando Apache2..."
apt-get install apache2 -y

echo "Instalando unzip..."
apt-get install unzip -y

echo "Baixando e descompactando site..."
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip

echo "Copiando arquivos do site para o Apache..."
cp -R linux-site-dio-main/* /var/www/html/

echo "Removendo arquivos padrão do Apache (opcional)..."
rm -rf /var/www/html/index.html

echo "Servidor Apache instalado e site no ar!"
