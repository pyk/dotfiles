# Bayu's dotfiles

A bunch of my development machine configuration files.

## Setup

    $ git clone https://github.com/pyk/dotfiles.git ~/.dotfiles
    $ ln -s ~/.dotfiles/bash/.bashrc ~/.bashrc

## Setup VIM

    $ mkdir -p $HOME/.vim/colors
    $ ln -s $HOME/.dotfiles/vim/colors/bayus.vim $HOME/.vim/colors/bayus.vim
    $ mkdir -p $HOME/.vim/autoload
    $ curl -fLo ~/.vim/autoload/plug.vim \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    $ ln -s $HOME/.dotfiles/vim/.vimrc $HOME/.vimrc

run vim and install the plugins withthis command

    :PlugInstall
