#!/usr/bin/env bash


apt-get update
apt-get install -y apache2 php7.0 libapache2-mod-php7.0 php-xdebug php-xml unzip php-zip
ufw allow in "Apache Full"
LINE="xdebug.show_error_trace = 1"
FILE="/etc/php/7.0/mods-available/xdebug.ini"
grep -q "$LINE" "$FILE" | echo "$LINE" >> "$FILE"
