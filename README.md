## Setup

    git clone git@ssh.github.com:dskecse/dotvim.git ~/.vim
    cd $_
    git submodule update --init --recursive
    cd bundle/YouCompleteMe
    ./install.sh
    ln -s ~/.vim/vimrc ~/.vimrc

## Update

    git pull origin master
    git submodule update --init --recursive
