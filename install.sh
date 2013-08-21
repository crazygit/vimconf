#!/bin/bash

# install requried packages for vim
sudo apt-get install -y git-core ctags python-pip
sudo pip install flake8

#set vimrc
if [ -f ~/.vimrc ];then
    echo "Aready exist ~/.vimrc, move it to ~/.vimrc_bak"
    mv ~/.vimrc ~/.vimrc_bak
fi
ln -s ~/.vim/vimrc ~/.vimrc

# install plugins
vim +BundleInstall +qall

# update the git remote for myself update the vim repo
cd ~/.vim && git remote set-url origin git@github.com:crazygit/vimconf.git
