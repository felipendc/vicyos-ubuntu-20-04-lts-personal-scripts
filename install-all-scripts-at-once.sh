#!/bin/bash

# github.com/felipendc
# FULL INSTALL COMMING SOON!


# Synaptic to install deb files:
sudo apt install synaptic

# Install Firewall and Setup:
sudo apt install gufw -y
sudo ufw enable
sudo ufw allow Samba

# Vicyos  Personal packages:
sudo apt install \
    vlc clementine wine qbittorrent -y

# Install any pkgs dependencies
sudo apt install -f

# Auto remove unnecessary pkgs
sudo apt autoremove

# Vicyos Personal snaps:
sudo snap install \
    visualg discord-bartixxx telegram-desktop glimpse-editor \
    handbrake-jz odio youtube-dl inkscape meteo

