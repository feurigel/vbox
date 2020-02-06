#!/usr/bin/env bash

apt-get install -y golang

go get github.com/mailhog/MailHog
MailHog -h

exit 0
