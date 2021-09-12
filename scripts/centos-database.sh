#!/bin/bash

# MySQL
wget https://dev.mysql.com/get/mysql57-community-release-el7-9.noarch.rpm
rpm -ivh mysql57-community-release-el7-9.noarch.rpm
yum install -y mysql-server

systemctl start mysqld

#grep 'temporary password' /var/log/mysqld.log

mysqld -u root -e "SHOW DATABASES";

#mysqld 
