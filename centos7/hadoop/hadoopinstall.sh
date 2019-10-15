#!/bin/sh

wget https://archive.apache.org/dist/hadoop/common/hadoop-2.9.2/hadoop-2.9.2.tar.gz
tar -zxvf hadoop-2.9.2.tar.gz
mv hadoop-2.9.2 /opt/hadoop/
sed -i "s/export JAVA_HOME=${JAVA_HOME}/export JAVA_HOME=/usr/local/java/jdk1.8.0_191/g" /opt/hadoop/etc/hadoop/hadoop-env.sh
cat core-site.xml >> /opt/hadoop/etc/hadoop/core-site.xml
cat hdfs-site.xml >> /opt/hadoop/etc/hadoop/hdfs-site.xml
cat mapred-site.xml.template >> /opt/hadoop/etc/hadoop/mapred-site.xml.template
cat yarn-site.xml >> /opt/hadoop/etc/hadoop/yarn-site.xml
