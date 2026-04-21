#!/bin/bash
sudo pacman -Sy git nftables curl xdotool --needed --noconfirm
git clone https://github.com/Sergeydigl3/zapret-discord-youtube-linux.git ~/zapret-discord-youtube-linux/
cd ~/zapret-discord-youtube-linux
chmod +x service.sh
./service.sh download-deps --default
sudo rm -rf custom-strategies
mkdir custom-strategies
cp ~/scriptslinux/zapret/custom-strategies/general_SIMPLE_FLOWSEAL_FAKE.bat ~/zapret-discord-youtube-linux/custom-strategies/
sudo rm -rf ~/zapret-discord-youtube-linux/zapret-latest/lists/list-general.txt
cp ~/scriptslinux/zapret/lists/list-general.txt ~/zapret-discord-youtube-linux/zapret-latest/lists
cp ~/scriptslinux/zapret/conf.env ~/zapret-discord-youtube-linux/
cd ~/zapret-discord-youtube-linux
./service.sh <<EOF
2
EOF
