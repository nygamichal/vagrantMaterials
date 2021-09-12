#!/bin/bash

# Update CentOS with any patches
yum update -y --exclude=kernel

# Tools
yum install -y nano git unzip screen wget

# Apache
yum install -y httpd httpd-devel httpd-tools
#chconfig --add httpd
#chkconfig httpd on
service httpd enable
service httpd stop

rm -rf /var/www/html
ln -s /vagrant /var/www/html

service httpd start

# PHP
yum install -y php php-cli php-common php-devel php-mysql

# MySQL
wget https://dev.mysql.com/get/mysql57-community-release-el7-9.noarch.rpm
rpm -ivh mysql57-community-release-el7-9.noarch.rpm
yum install -y mysql-server

systemctl start mysqld

grep 'temporary password' /var/log/mysqld.log

#mysqld 

# Download Starter Content
service httpd restart