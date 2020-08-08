#!/bin/bash
if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    echo "Linux OS"
    DISTRO_ID=$(lsb_release -si)
    if [[ "$DISTRO_ID" == "Ubuntu" ]]; then
        echo "Install with apt"
	sudo apt update
	sudo apt install -y vim curl python3 python3-dev cmake xclip
    elif [[ "$DISTRO_ID" == "Fedora"* ]]; then
        echo "Install with yum"
	sudo yum update
	sudo yum install -y vim curl python3 python3-dev cmake xclip
    else
        echo "error can't install package"
        exit 1;
    fi
elif [[ "$OSTYPE" == "darwin"* ]]; then
    brew install vim curl cmake python3 python3-dev
else
    echo "Unsupport platform: $OSTYPE"
    exit 1
fi

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
~/.nvm/nvm.sh
nvm install stable
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cp .vimrc ~/.vimrc
vim +PluginInstall +qall
~/.vim/bundle/YouCompleteMe/install.py --all


