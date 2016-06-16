git clone https://github.com/rbenv/rbenv.git ~/.rbenv
cd ~/.rbenv && src/configure && make -C src && cd ~
mkdir -p ~/.dotfiles/rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' > ~/.dotfiles/rbenv/rbenv.path
echo 'eval "$(rbenv init -)"' >> ~/.dotfiles/rbenv/rbenv.path
exec $SHELL
type rbenv
echo "Finished."
echo "Run rbenv install -l to see available version"
