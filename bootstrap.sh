#!/usr/bin/env bash


apt-get update

echo "mysql-server mysql-server/root_password password password" | sudo debconf-set-selections
echo "mysql-server mysql-server/root_password_again password password" | sudo debconf-set-selections

apt-get install -y apache2 php7.0 libapache2-mod-php7.0 php-xdebug php-xml unzip php-zip mysql-server
ufw allow in "Apache Full"
LINE="xdebug.show_error_trace = 1"
FILE="/etc/php/7.0/mods-available/xdebug.ini"
grep -q "$LINE" "$FILE" | echo "$LINE" >> "$FILE"
