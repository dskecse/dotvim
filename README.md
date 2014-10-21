## Setup

    git clone git@ssh.github.com:dskecse/dotvim.git ~/.vim
    cd ~/.vim
    git submodule update --init --recursive
    ln -s ~/.vim/vimrc ~/.vimrc

## Update

    cd ~/.vim
    git pull origin master
    git submodule update --init --recursive
