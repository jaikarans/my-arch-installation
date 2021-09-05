#!/bin/bash

# This is script which I use to install Xorg and Kde

# Check if script is not running as sudo
USER_ID=`id -u`
if [ $USER_ID -ne 0 ]
then
    printf '\33[0;31m Please run this file as sudo \n'
    printf '\t sudo setup.sh \33[0m'
    exit
fi

# \33[0;31m is color red
# \33[0;32m is color green
# \33[0m   is color white
printf '\33[0;32m ===> Installing Xorg \n \33[0m'
pacman -S --noconfirm xorg xorg-xinit xorg-twm xorg-xclock xterm

printf '\33[0;32m \n\n===> Installing kde-plasma \n \33[0m'
pacman -S --noconfirm plasma 


printf '\33[0;32m \n\n===> Insatalling Kde-applications \n \33[0m'

printf '\33[0;32m \n\n===> From kde-graphics-meta \n \33[0m'
pacman -S --noconfirm kamera kdegraphics-thumbnailers okular skanlite spectacle

printf '\33[0;32m \n\n===> From kde-multimedia-meta \n \33[0m'
pacman -S --noconfirm ffmpegthumbs

printf '\33[0;32m \n\n===> From kde-network-meta \n \33[0m'
pacman -S --noconfirm kdeconnect kdenetwork-filesharing kget kio-extras

printf '\33[0;32m \n\n===> From kde-sdk-meta \n \33[0m'
pacman -S --noconfirm dolphin-plugins

echo -e '\33[0;32m \n\n===> From kde-system-meta \n \33[0m'
pacman -S --noconfirm dolphin khelpcenter ksystemlog

printf '\33[0;32m \n\n===> From kde-utilities-meta \n \33[0m'
pacman -S --noconfirm ark kate keditbookmarks kfind kwalletmanager print-manager konsole


printf '\33[0;32m \n\n===> Enabling sddm and network manager \n \33[0m'
systemctl enable sddm
systemctl enable NetworkManager

