name              "mailcatcher-ng"
maintainer        "Inviqa"
license           "Apache 2.0"
description       "Allows for installation of MailCatcher on CentOS boxes."
version           "0.0.2"

depends "rbenv"
depends "iptables-ng"

recommends "php"
recommends "php-fpm"

supports "centos"
