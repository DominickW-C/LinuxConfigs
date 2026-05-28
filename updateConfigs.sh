#!/usr/bin/env bash

cd ~/LinuxConfigs/
mv README.md ../
mv updateConfigs.sh ../
rm -r * 
mv ../README.md ./
mv ../updateConfigs.sh ./
cp -r ~/.config/alacritty/ ./
cp -r ~/.config/hypr/ ./
cp -r ~/.config/nvim/ ./
cp -r ~/.config/waybar/ ./
cp -r ~/.config/wofi/ ./
cp -r ~/.config/wlogout/ ./
