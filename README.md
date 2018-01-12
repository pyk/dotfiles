# Bayu's dotfiles

A bunch of my development machine configuration files.

## Setup
Copy paste this on your current session

    # clone repo
    git clone https://github.com/pyk/dotfiles.git ~/.dotfiles

    # run setup
    cd ~/.dotfiles && sh setup.sh


## Vim

    # setup vim(1)
    mkdir -p $HOME/.vim/colors
    ln -s $HOME/.dotfiles/vim/colors/bayus.vim $HOME/.vim/colors/bayus.vim
    mkdir -p $HOME/.vim/autoload
    curl -fLo ~/.vim/autoload/plug.vim \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    ln -s $HOME/.dotfiles/vim/.vimrc $HOME/.vimrc
    # run vim and install the plugins withthis command
    # :PlugInstall

Setup specific file type setting:

    mkdir -p $HOMR/.vim/ftplugin
    ln -s $HOME/.vim/ftplugin $HOME/.dotfiles/vim/ftplugin

## Sublime text on Mac
Create `subl(1)` alias using

    ln -s /Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl /usr/bin/subl
