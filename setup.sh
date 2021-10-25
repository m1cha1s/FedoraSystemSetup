#!/bin/bash

# Updating system

echo "---- Updating ----"

dnf update -y

echo "---- Upgrading ----"

dnf upgrade -y

# snap
echo "---- Installing Snap ----"

dnf install snapd -y

echo "---- Setting up snap ----"

ln -s /var/lib/snapd/snap /snap/

# vscode
echo "---- Installing VSCode ----"

snap install code --classic

# spotify
echo "---- Installing Spotify ----"

snap install spotify

# discord
echo "---- Installing Discord ----"

snap install discord

# xournal
echo "---- Installing Xournal ----"


dnf install xournal -y

# ssh

# ssh-keygen

# git
echo "---- Installing git ----"

dnf install git -y

echo "---- Setting up git ----"

git config --global user.name "m1cha1s"
git config --global user.email "msulej04@gmail.com"

# python
echo "---- Installing python ----"

dnf install python3 python3-pip -y
pip3 install numpy

# krita
echo "---- Installing Krita ----"

dnf install krita -y

