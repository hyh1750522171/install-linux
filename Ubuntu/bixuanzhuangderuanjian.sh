#!/usr/bin/env bash


sudo apt-get update
sudo apt-get install -y fish net-tools ranger caca-utils highlight atool w3m poppler-utils mediainfo openssh-client openssh-server curl screenkey simplescreenrecorder
sudo service ssh start
sudo ps -e | grep ssh
sudo apt-get remove vim-common -y
curl -L https://git.oh-my.fish | fish
curl -L https://git.oh-my.fish
wget  https://git.oh-my.fish
curl -L https://git.oh-my.fish | fish

