#!/usr/bin/env bash

sudo apt-get install -y \
golang \
sendmail

go get github.com/mailhog/MailHog
go get github.com/mailhog/mhsendmail

sudo ln -s /home/vagrant/go/bin/mhsendmail /usr/local/bin/mhsendmail

exit 0
