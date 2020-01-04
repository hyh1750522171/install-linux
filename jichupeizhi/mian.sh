#!/bin/sh

####### linux基础配置 #########
#
######## 介绍结束 ###############

########## 脚本开始 ############
sudo apt install -y python3 python3-pip wget git vim net-tools
sleep 1
cp -r .pip ~/
sleep 1
pip3 install -r pipinstall.txt
sleep 1
########## 脚本结束 #########