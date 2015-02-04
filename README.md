# Bayu's dotfiles

A bunch of my CoreOS machine configuration files.

## Setup

    git clone -b coreos https://github.com/pyk/dotfiles.git ~/.dotfiles
    ln -sf ~/.dotfiles/bash/.bashrc ~/.bashrc

## Setup git
     
    ln -sf ~/.dotfiles/git/.gitconfig ~/.gitconfig
    ln -sf ~/.dotfiles/git/.gitignore ~/.gitignore

## Setup top(1)

    ln -sf ~/.dotfiles/top/.toprc ~/.toprc

## Setup VIM
requirements: [clang-format](http://llvm.org/apt/)

    mkdir -p $HOME/.vim/colors
    ln -s $HOME/.dotfiles/vim/colors/bayus.vim $HOME/.vim/colors/bayus.vim
    mkdir -p $HOME/.vim/autoload
    curl -fLo ~/.vim/autoload/plug.vim \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    ln -s $HOME/.dotfiles/vim/.vimrc $HOME/.vimrc

run vim and install the plugins withthis command

    :PlugInstall
