#!/bin/bash

#Clean system

echo "Limpando a lixeira"
sudo rm -rf /home/$USER/.local/share/Trash/files/*
echo "***"
echo "***"
echo "***"
echo "Limpando cache do sistema"
sudo apt clean -y
echo "***"
echo "***"
echo "***"
echo "Reparando pacotes quebrados"
sudo dpkg --configure -a
echo "Limpeza concluida"
sleep 3
exit