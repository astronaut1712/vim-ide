#!/bin/bash
sudo apt update
sudo apt install -y vim curl python3 python3-dev cmake go xclip
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
~/.nvm/nvm.sh
nvm install stable
npm install -g yarn
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cp .vimrc ~/.vimrc
vim +PluginInstall +qall
~/.vim/bundle/YouCompleteMe/install.py --all


