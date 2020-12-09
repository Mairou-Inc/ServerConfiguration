#!/bin/bash


sudo adduser www --gecos "First Last,RoomNumber,WorkPhone,HomePhone" --disabled-password
echo "www:password" | sudo chpasswd

sudo apt-get update 
sudo apt-get install -y vim mosh tmux htop git curl wget unzip zip gcc build-essential make
sudo apt-get install -y zsh tree nginx zlib1g-dev libbz2-dev libreadline-dev llvm libncurses5-dev libncursesw5-dev xz-utils tk-dev liblzma-dev python3-dev python3-lxml libxslt-dev python-libxml2 python-libxslt1 libffi-dev libssl-dev python-dev gnumeric libsqlite3-dev libpq-dev libxml2-dev libxslt1-dev libjpeg-dev libfreetype6-dev libcurl4-openssl-dev supervisor

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

mkdir ~/code

wget https://www.python.org/ftp/python/3.8.2/Python-3.8.2.tgz ; \
tar xvf Python-3.8.* ; \
cd Python-3.8.2 ; \
mkdir ~/.python ; \
./configure --enable-optimizations --prefix=/home/www/.python ; \
make  ; \
sudo make altinstall

sudo /home/www/.python/bin/python3.8 -m pip install -U pip

cd

