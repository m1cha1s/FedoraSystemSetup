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

# cron
echo "---- Installing Cron ----"

dnf install cronie -y

# syncthing
echo "---- Installing Syncthing ----"

dnf install syncthing -y

echo "---- Setting up Syncthing ----"

systemctl --user enable syncthing.service
systemctl --user start syncthing.service

# dev tools
echo "---- Instaling DevTools ----"

dnf groupinstall 'Development Tools' -y

# Copr
echo "---- Enabling Copr ----"

dnf install dnf-plugins-core -y

# kicad nightly
echo "---- Installing KiCAD Nightly ----"

dnf copr enable @kicad/kicad -y
dnf install kicad-nightly -y
dnf install kicad-nightly-packages3d -y

# freecad
echo "---- Installing FreeCAD ----"

dnf install freecad -y

# rpi-imager
echo "---- Installing Rpi-Imager ----"

dnf install rpi-imager -y

# wine 
echo "---- Installing WINE ----"

dnf install wine winetricks -y

# steam
echo "---- Installing Steam ----"

dnf install steam -y

# lutris
echo "---- Installing Lutris ----"

dnf install lutris -y

# onenote
echo "---- Installing OneNote ----"

snap install onenote-desktop

# virtualization
echo "---- Installing Virtualization ----"

dnf install @virtualization -y
systemctl start libvirtd
systemctl enable libvirtd

# java
echo "---- Installing JAVA DevTools ----"

dnf group install "Java Development" -y

# docker
echo "---- Installing Docker ----"

dnf install docker -y
dnf install docker-compose -y

# kde-connect
echo "---- Installing KDE Connect ----"

dnf install kde-connect -y

# C# devtools
echo "---- Installing C# DevTools ----"

dnf install dotnet -y
dnf install mono-devel -y

# monodevelop
echo "---- Installing MonoDevelop ----"

dnf install monodevelop -y