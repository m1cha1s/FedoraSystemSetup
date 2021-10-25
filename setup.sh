#!/bin/bash

# Updating system

dnf update -y
dnf upgrade -y

# snap

dnf install snapd -y
ln -s /var/lib/snapd/snap /snap/

# vscode

snap install code

# spotify

snap install spotify

# discord

snap install discord

# xournal

dnf install xournal -y

# git

dnf install git -y

