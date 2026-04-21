#!/bin/bash
sudo pacman -Sy rust
git clone https://aur.archlinux.org/paru.git ~/paru
cd paru
makepkg -si
