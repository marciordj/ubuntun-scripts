#!/bin/bash

#Post install

echo "Atualizando sistema"
sudo apt update
sleep 1
sudo apt dist-upgrade -y
echo "================="
echo "deborphan install"
sudo apt install -y deborphan
sleep 1
echo "================="
echo "Clean"
deborphan | xargs sudo apt autoremove --purge -y
sleep 2
echo "================="
echo "================="
echo "node install"
echo "================="
echo "Nvm"
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.1/install.sh | bash
sleep 2
echo "================="
echo "================="
echo "tilix install"
sudo apt install tilix