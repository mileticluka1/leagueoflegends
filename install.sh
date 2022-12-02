#!/bin/bash

git clone https://aur.archlinux.org/snapd.git
cd snapd
sudo makepkg -si
sudo systemctl enable --now snapd.socket
sudo ln -s /var/lib/snapd/snap /snap
sudo snap install leagueoflegends --edge --devmode
sudo snap refresh --candidate wine-platform-5-staging
sudo snap refresh --candidate wine-platform-runtime
sudo leagueoflegends
