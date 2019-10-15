#!/bin/sh

rpm -qa | grep mysql
yum install mysql -y
yum remove mysql -y
wget http://repo.mysql.com/mysql-community-release-el7-5.noarch.rpm
rpm -ivh mysql-community-release-el7-5.noarch.rpm
sudo yum install mysql-server -y
yum install glibc.i686 -y
yum list libstdc++* -y
chown root /var/lib/mysql/
service mysqld restart
