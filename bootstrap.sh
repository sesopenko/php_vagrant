#!/usr/bin/env bash


apt-get update
apt-get install -y apache2 php7.0 libapache2-mod-php7.0
ufw allow in "Apache Full"
