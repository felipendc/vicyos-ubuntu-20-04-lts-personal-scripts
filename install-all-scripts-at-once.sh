#!/bin/bash

# github.com/felipendc


# Vicyos  Personal packages:
sudo apt install \
    vlc clementine wine qbittorrent synaptic gufw \
    samba smbclient samba-common-bin smbclient libsmbclient -y

# Install any pkgs dependencies
sudo apt install -f

# Auto remove unnecessary pkgs
sudo apt autoremove

# Install Firewall and Setup: 
sudo ufw enable
sudo ufw allow Samba

# Setup Samba
sudo smbpasswd -a vicyos

# Vicyos Personal snaps:
sudo snap install \
    visualg discord-bartixxx telegram-desktop glimpse-editor \
    handbrake-jz odio youtube-dl inkscape meteo





#########################################
### Run scripts and install packages ####
#########################################

# Setup Android Build Environment:
cd android-build-environment-setup && ./android_build_env.sh && cd ../

# Install nitroshare in case samba isn't working:
cd nitroshare && sudo apt install ./nitroshare_0.3.3-1.1_amd64.deb && cd ../

# Move my personal .bashrc file to my HOME folder:
cd ubuntu-personal-bashrc && cp -r .bashrc $HOME/ && cd ../

