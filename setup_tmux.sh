sudo apt-get update
sudo apt-get install -y python-software-properties software-properties-common
sudo add-apt-repository -y ppa:pi-rho/dev
sudo apt-get update
sudo apt-get install -y tmux

if [ ! -d ~/.tmux  ]; then
    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
fi
ln -sf ~/.dotfiles/tmux/.tmux.conf ~/.tmux.conf
tmux source ~/.tmux.conf


