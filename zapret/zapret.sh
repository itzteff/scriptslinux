#!/bin/bash
sudo pacman -Sy git nftables curl --needed --noconfirm
git clone https://github.com/Sergeydigl3/zapret-discord-youtube-linux.git ~/zapret-discord-youtube-linux/
cd ~/zapret-discord-youtube-linux
./service.sh download-deps --default
sudo rm -rf custom-strategies
mkdir custom-strategies
cp ~/scriptslinux/custom-strategies/general_SIMPLE_FLOWSEAL_FAKE.bat ~/zapret-discord-youtube-linux/custom-strategies/
