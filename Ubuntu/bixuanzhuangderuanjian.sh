#!/usr/bin/env bash

sudo apt-get remove vim-common -y
sudo apt-get update
git clone https://github.com/hyh1750522171/google-chrome.git
sudo apt-get install -y  typora ghostscript neovim python3-pip vlc fish net-tools ranger caca-utils highlight atool w3m poppler-utils mediainfo openssh-client openssh-server curl screenkey simplescreenrecorder ipython3
sudo service ssh start
sudo ps -e | grep ssh
curl -L https://git.oh-my.fish | fish
curl -L https://git.oh-my.fish
wget  https://git.oh-my.fish
curl -L https://git.oh-my.fish | fish
ssh-keygen -t rsa -b 4096 -C "2667004988@qq.com"
