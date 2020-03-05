#!/usr/bin/env bash

sudo apt-get install -y \
golang \
supervisor

go get github.com/mailhog/MailHog
go get github.com/mailhog/mhsendmail

sudo ln -s /home/vagrant/go/bin/MailHog /usr/local/bin/mailhog
sudo ln -s /home/vagrant/go/bin/mhsendmail /usr/local/bin/mhsendmail

sudo cp /vagrant/provisioning/configs/supervisor/mailhog.conf /etc/supervisor/conf.d
sudo service supervisor restart

sudo cp /vagrant/provisioning/configs/php/mailhog.ini /etc/php/${PHP_VERSION}/mods-available
sudo ln -s /etc/php/${PHP_VERSION}/mods-available/mailhog.ini /etc/php/${PHP_VERSION}/fpm/conf.d/20-mailhog.ini

sudo service php${PHP_VERSION}-fpm restart

exit 0
