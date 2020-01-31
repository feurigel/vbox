#!/usr/bin/env bash

apt-get install -y \
php7.2-fpm \
php7.2-cli \
php7.2-common \
php7.2-json \
php7.2-mysql \
php7.2-readline \
php7.2-xml \
php7.2-curl \
php7.2-gd \
php7.2-mbstring \
php7.2-opcache \
php7.2-sqlite3 \
php7.2-zip \
php7.2-intl \
php-xdebug

# Copy configs
cp /vagrant/provisioning/configs/php/xdebug.ini /etc/php/7.2/mods-available

# Restart PHP
service php7.2-fpm restart

exit $?
