#!/bin/bash

sudo apt-get update
sudo apt-get upgrade
sudo apt-get install zsh neovim zoxide exa lua5.4 git
echo -e "\nexport ZDOTDIR="$HOME/.config/zsh" | sudo tee -a /etc/zsh/zshenv
chsh -s /bin/zsh
