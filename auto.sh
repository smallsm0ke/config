#!/usr/bin/sh

sudo apt update
sudo apt install tmux -y
sudo apt install vim -y
sudo apt install firefox-esr -y
sudo apt install gnome-terminal -y
sudo apt install pactl -y

cat ~/config/bashrc >> ~/.bashrc
cat ~/config/i3config >> ~/.config/i3/config
cp ~/config/vimrc ~/.vimrc
cp ~/config/tmux.conf ~/.tmux.conf
cp ~/config/switch-audio-device.sh ~/.switch-audio-device.sh

source ~/.bashrc
i3-msg reload
