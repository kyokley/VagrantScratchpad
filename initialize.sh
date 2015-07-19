#!/bin/bash

apt-get update
apt-get install aptitude -y
aptitude install git -y

git clone https://github.com/kyokley/vimRepo.git -b nologin ~/.vim
git clone https://github.com/kyokley/dotfiles.git -b nologin ~/dotfiles

cd ~/.vim
bash install.sh

cd ~/dotfiles
bash install.sh
