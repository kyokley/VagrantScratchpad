#!/bin/bash

sudo apt-get update
sudo apt-get install aptitude -y
sudo aptitude safe-upgrade -y
sudo aptitude install git -y

sudo adduser yokley
sudo adduser yokley adm
sudo adduser yokley sudo

exec sudo -i -u yokley /bin/bash - << eof
git clone https://github.com/kyokley/vimRepo.git -b nologin ~/.vim
git clone https://github.com/kyokley/dotfiles.git -b nologin ~/dotfiles

cd ~/.vim
bash install.sh

cd ~/dotfiles
bash install.sh
eof
