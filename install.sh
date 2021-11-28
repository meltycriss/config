#!/bin/bash

echo "Install tmux"
sudo apt-get install -y tmux=3.0a-2ubuntu0.3
sudo apt-get install -y xclip
cp ./.tmux.conf ~/.tmux.conf

echo "Install zsh"
sudo apt-get install -y zsh
cd /tmp
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
chmod +x install.sh
./install.sh
sed -i "s/^plugins=(git.*/plugins=(git vi-mode)/g" ~/.zshrc
