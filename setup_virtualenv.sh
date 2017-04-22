# install python-pip if not exists
sudo apt-get install python-pip

# install virutalenv
sudo pip install virtualenv

# install virtualenvwrapper
sudo pip install virtualenvwrapper

# setup
mkdir -p ~/.dotfiles/virtualenv
echo "export WORKON_HOME=$HOME/.virtualenvs" > ~/.dotfiles/virtualenv/path.sh
echo "source /usr/local/bin/virtualenvwrapper.sh" >> ~/.dotfiles/virtualenv/path.sh
exec $SHELL
