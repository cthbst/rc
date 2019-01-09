#!/bin/sh
sudo apt-get -y update
sudo apt-get -y upgrade

#[chrome]
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'
sudo apt-get -y update 
sudo apt-get -y install google-chrome-stable

#[development tool]
sudo apt -y install build-essential

#[vim]
sudo apt-get -y install vim

#[git]
sudo apt-get -y install git

# Set nickname
git config --global user.name "cthbst"

# Set email
git config --global user.email "edison1998402@gmail.com"

git config --global color.ui true
git config --global alias.lg "log --color --graph --all \
--pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset \
%s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --"

git config --global credential.helper cache
# Set git to use the credential memory cache

git config --global credential.helper 'cache --timeout=3600'
# Set the cache to timeout after 1 hour (setting is in seconds)


#[hime] 中文輸入法
sudo apt-get -y install hime

#[UNITY TWEAK TOOL]
sudo apt-get -y install unity-tweak-tool

#[VMware player]
mkdir ~/VMware && cd ~/VMware 
wget -c http://goo.gl/JpvULv -O VMware-Player-6.0.0-1295980.x86_64.bundle.tar 
tar -xvf VMware-Player-6.0.0-1295980.x86_64.bundle.tar 
chmod +x VMware-Player-6.0.0-1295980.x86_64.bundle 
sudo sh VMware-Player-6.0.0-1295980.x86_64.bundle 

#[VirtualBox]
sudo apt-get -y install virtualbox 
sudo apt -y install virtualbox-ext-pack 
sudo apt -y install virtualbox virtualbox-ext-pack 

#[latex]
sudo apt-get -y install texlive
sudo apt-get -y install texlive-full
sudo apt-get -y install gedit-latex-plugin
sudo apt-get -y install gedit-latex-plugin texlive-fonts-recommended latex-beamer texpower texlive-pictures texlive-latex-extra texpower-examples imagemagick

#[font]
# english font: Consolas.ttf Monaco.ttf
# https://github.com/kakkoyun/linux.files/tree/master/fonts

cd ~/Desktop/
wget https://github.com/kakkoyun/linux.files/raw/master/fonts/Consolas.ttf
sudo mkdir -p /usr/share/fonts/consolas
sudo mv Consolas.ttf /usr/share/fonts/consolas/
sudo chmod 644 /usr/share/fonts/consolas/Consolas.ttf
cd /usr/share/fonts/consolas
sudo mkfontscale && sudo mkfontdir && sudo fc-cache -fv

# chinese font: 思源黑體
# https://www.beforafter.org/blog/source-han-sans-font 

cd ~/Desktop/
wget https://noto-website.storage.googleapis.com/pkgs/NotoSansCJKtc-hinted.zip
sudo unzip NotoSansCJKtc-hinted.zip -d /usr/share/fonts/Noto\ Sans\ CJK\ TC/
cd /usr/share/fonts/Noto\ Sans\ CJK\ TC/
sudo chmod 644 *.otf
sudo mkfontscale && sudo mkfontdir && sudo fc-cache -fv


#[sublime 3] 文字編輯器
sudo add-apt-repository -y ppa:webupd8team/sublime-text-3
sudo apt-get -y update
sudo apt-get -y install sublime-text-installer

#[Java]
sudo apt-add-repository -y ppa:webupd8team/java
sudo apt-get -y update
sudo apt-get -y install oracle-java8-installer
