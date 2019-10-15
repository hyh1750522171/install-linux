#!/bin/sh

mkdir /usr/local/java/
tar -zxvf ~/jdk-8u191-linux-x64.tar.gz -C /usr/local/java/
cat javaHome.txt >> /etc/profile
source /etc/profile
ln -s /usr/local/java/jdk1.8.0_171/bin/java /usr/bin/java
java -version