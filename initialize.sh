#!/bin/bash

apt-get update
apt-get install aptitude -y
aptitude install git -y

adduser yokley
adduser yokley adm
adduser yokley sudo

exec sudo -i -u yokley /bin/bash - << eof

git clone https://github.com/kyokley/vimRepo.git -b nologin --recursive ~/.vim
git clone https://github.com/kyokley/dotfiles.git -b nologin --recursive ~/dotfiles

cd ~/.vim
bash install.sh

cd ~/dotfiles
bash install.sh

eof
