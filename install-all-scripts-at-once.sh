#!/bin/bash

# github.com/felipendc
# FULL INSTALL COMMING SOON!


# Synaptic to install deb files.
sudo apt install synaptic

# Install Firewall and Setup.
sudo apt install gufw -y
sudo ufw enable
sudo ufw allow Samba

# Personal media pkgs
sudo apt install vlc clementine -y
