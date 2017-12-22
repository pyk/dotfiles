#sudo apt-get update
#sudo apt-get install -y python-software-properties software-properties-common
#sudo add-apt-repository -y ppa:pi-rho/dev
#sudo apt-get update
#sudo apt-get install -y tmux

# Download tmux
wget https://github.com/tmux/tmux/releases/download/2.6/tmux-2.6.tar.gz

# Extract tmux
tar -xzvf tmux-2.6.tar.gz

# Build tmux
cd tmux-2.6
./configure && make

# Install tmux
cp tmux ~/.local/bin
exec $SHELL
cd ..

#if [ ! -d ~/.tmux  ]; then
#    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
#fi

# Setup tmux conf
ln -sf ~/.dotfiles/tmux/.tmux.conf ~/.tmux.conf
tmux source ~/.tmux.conf


