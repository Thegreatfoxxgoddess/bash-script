#!/bin/bash/
#######################################
# Bash script to install apps on a new system (Debian)
# Written by Alícia dark
#######################################

echo "Welcome back Alicia..."
echo "sit back and enjoy while I do your work ;)"

## Update packages and Upgrade system
sudo apt-get update -y

## Git ##
echo 'Installing Git..'
sudo apt-get install git -y

##installing flatpak##

echo 'updating repos.....'
sudo apt install flatpak
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

#snap craft#

sudo apt update
sudo apt install snapd
sudo snap install core

##installing telegram##

echo 'installing telegram in progress....'

flatpak install flathub org.telegram.desktop

echo 'installing kotatogram in progress...'

flatpak install flathub io.github.kotatogram

echo 'installing discord'

flatpak install flathub com.discordapp.Discord

echo 'better discord setup started...'

curl -O https://raw.githubusercontent.com/bb010g/betterdiscordctl/master/betterdiscordctl
chmod +x betterdiscordctl
sudo mv betterdiscordctl /usr/local/bin
betterdiscordctl self-upgrade
betterdiscordctl -i flatpak install

echo 'better discord setup finished'

echo 'installing chromium'

flatpak install flathub org.chromium.Chromium

echo 'installation finished'

echo 'installing brave'

sudo snap install brave

echo 'installation finished'

echo 'installing angelfish'

flatpak install flathub org.kde.angelfish

echo 'installation finished'

echo 'installing Spotify'

flatpak install flathub com.spotify.Client

echo 'installation finished'

echo 'installing vscode'

flatpak install flathub com.visualstudio.code

echo 'installation finished'

##additional codec##
echo 'additional repo setup'
sudo apt-add-repository non-free
sudo apt-add-repository contrib
sudo apt update
sudo apt install libavcodec-extra

echo 'installation finished'

sudo dpkg -i package01.deb

echo 'cleaning up the mess....'

sudo apt autoremove

##only for KDE##

#sudo add-apt-repository ppa:papirus/papirus
#sudo apt update
#sudo apt install qt5-style-kvantum qt5-style-kvantum-themes
