#!/bin/bash

# This is script which I use to install Xorg and Kde

# Check if script is not running as sudo
USER_ID=`id -u`
if [ $USER_ID -ne 0 ]
then
    echo 'Please run this file as sudo'
    echo 'sudo setup.sh'
    exit
fi

echo -e '===> Installing Xorg \n'
pacman -S --noconfirm xorg xorg-xinit xorg-twm xorg-xclock xterm

echo -e '\n\n===> Installing kde-plasma \n'
pacman -S --noconfirm plasma 


echo -e '\n\n===> Insatalling Kde-applications \n'

echo -e '\n\n===> From kde-graphics-meta \n'
pacman -S --noconfirm kamera kdegraphics-thumbnailers okular skanlite

echo -e '\n\n===> From kde-multimedia-meta \n'
pacman -S --noconfirm ffmpegthumbs

echo -e '\n\n===> From kde-network-meta \n'
pacman -S --noconfirm kdeconnect kdenetwork-filesharing kget kio-extras

echo -e '\n\n===> From kde-sdk-meta \n'
pacman -S --noconfirm dolphin-plugins

echo -e '\n\n===> From kde-system-meta \n'
pacman -S --noconfirm dolphin khelpcenter ksystemlog

echo -e '\n\n===> From kde-utilities-meta \n'
pacman -S --noconfirm ark kate keditbookmarks kfind kwalletmanager print-manager


echo -e '\n\n===> Enabling sddm and network manager \n'
systemctl enable sddm
systemctl enable NetworkManager

