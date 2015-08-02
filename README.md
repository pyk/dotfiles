# Bayu's dotfiles

A bunch of my development machine configuration files.

## Setup
Copy paste this on your current session

    # clone repo
    git clone https://github.com/pyk/dotfiles.git ~/.dotfiles

    # setup bash
    ln -sf ~/.dotfiles/bash/.bashrc ~/.bashrc
    exec $SHELL # restart bash session

    # setup top(1)
    ln -sf ~/.dotfiles/top/.toprc ~/.toprc

    # setup git
    ln -sf ~/.dotfiles/git/.gitconfig ~/.gitconfig

    # setup vim(1)
    mkdir -p $HOME/.vim/colors
    ln -s $HOME/.dotfiles/vim/colors/bayus.vim $HOME/.vim/colors/bayus.vim
    mkdir -p $HOME/.vim/autoload
    curl -fLo ~/.vim/autoload/plug.vim \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    ln -s $HOME/.dotfiles/vim/.vimrc $HOME/.vimrc
    # run vim and install the plugins withthis command
    # :PlugInstall


