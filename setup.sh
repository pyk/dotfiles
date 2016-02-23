#!/bin/bash

# setup bash
ln -sf ~/.dotfiles/bash/.bashrc ~/.bashrc
exec $SHELL # restart bash session

# setup top(1)
ln -sf ~/.dotfiles/top/.toprc ~/.toprc

# setup git
ln -sf ~/.dotfiles/git/.gitconfig ~/.gitconfig