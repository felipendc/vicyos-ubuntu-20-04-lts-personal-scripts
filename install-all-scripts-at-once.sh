#!/bin/bash
# github.com/felipendc

# Variable to Setup the current user name for Samba  
current_user_name="vicyos"


# Vicyos  Personal packages:
sudo apt install \
    python3-pip git-lfs vlc clementine wine qbittorrent synaptic gufw \
    samba smbclient samba-common-bin smbclient libsmbclient inkscape \
    winff brasero deepin-movie filezilla handbrake -y
        
# Install any pkgs dependencies
sudo apt install -f

# Auto remove unnecessary packages:
#sudo apt autoremove

# Install Firewall and allow Samba: 
sudo ufw enable
sudo ufw allow Samba

# Setup Samba
sudo smbpasswd -a $current_user_name

# Vicyos Personal snaps:
sudo snap install \
    visualg \
    discord-bartixxx \
    telegram-desktop \
    glimpse-editor \
    odio \
    youtube-dl \
    meteo \
    onlyoffice-desktopeditors

# Initiate git-lfs for larger packages:
# git lfs install





#########################################
### Run scripts and install packages ####
#########################################

# Setup Android Build Environment:
cd android-build-environment-setup && ./android_build_env.sh && cd ../

# Install nitroshare in case samba isn't working:
cd nitroshare && sudo apt install ./nitroshare_0.3.3-1.1_amd64.deb -y --allow-downgrades && cd ../

# Move my personal .bashrc file to my HOME folder:
cd ubuntu-personal-bashrc && sudo cp -r .bashrc* $HOME/ && cd ../

# Install 4kvideodownloader:
cd random && sudo apt install ./4kvideodownloader*.deb -y --allow-downgrades && cd ../

# Install Google-Chrome Browser:
cd random && sudo apt install ./google-chrome-stable_current_amd64.deb -y --allow-downgrades && cd ../

# Install Visual Studio Code:
cd random && sudo apt install ./code*.deb -y --allow-downgrades && cd ../

# Install Photoscape with wine:
cd random && wine photoscape*.exe && cd ../

# Install XDownloader Manager: 
cd random && tar -xf xdm*.tar.xz  && sudo ./install.sh && rm -r install.sh readme.txt && cd ../

# Install SoundCloud Downloader:
cd scdl && sudo pip3 install scdl && cd ../






# LOOK FOR UPDATE FOR ALL THE PACKAGES:
sudo apt update && sudo apt upgrade -y
