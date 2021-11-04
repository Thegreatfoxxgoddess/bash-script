#!/bin/bash/
#######################################
# Bash script to install apps on a new system (Debian)
# Written by Alícia dark
#######################################

echo "Welcome Alicia"
echo "sit back and enjoy"
## Update packages and Upgrade system
sudo apt-get update -y

## Git ##
echo '###Installing Git..'
sudo apt-get install git -y
