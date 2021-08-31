#!bin/bash

# This is script which I use to install Xorg and Kde

# Check if script is not running as sudo
USER_ID=`id -u`
if [ $USER_ID -ne 0 ]
then
    echo 'Please run this file as sudo'
    echo 'sudo setup.sh'
    exit
fi

echo '===> Installing Xorg'
pacman -S --noconfirm xorg xorg-xinit xorg-twm xorg-xclock xterm

echo '===> Installing kde-plasma'
pacman -S --noconfirm plasma 


echo '===> Insatalling Kde-applications'

echo '===> From kde-graphics-meta'
pacman -S --noconfirm kamera kdegraphics-thumbnails okular skanlite

echo '===> From kde-multimedia-meta'
pacman -S --noconfirm ffmpegtumbs

echo '===> From kde-network-meta'
pacman -S --noconfirm kdeconnect kdenetwork-filesharing kget kio-extras

echo '===> From kde-sdk-meta'
pacman -S --noconfirm dolphin-plugins

echo '===> From kde-system-meta'
pacman -S dolphin khelpcenter ksystemlog

echo '===> From kde-utilities-meta'
pacman -S ark kate keditbookmarks kfind kwalletmanager print-manager


echo '===> Enabling sddm and network manager'
systemctl enable sddm
system enable NetworkManager

