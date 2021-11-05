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

echo 'installing chromium'

flatpak install flathub org.chromium.Chromium

echo 'installing angelfish'

flatpak install flathub org.kde.angelfish

echo 'installing Spotify'

flatpak install flathub com.spotify.Client

echo 'installing vscode'

flatpak install flathub com.visualstudio.code

##additional codec##
echo 'additional repo setup'
sudo apt-add-repository non-free
sudo apt-add-repository contrib
sudo apt update
sudo apt install libavcodec-extra


