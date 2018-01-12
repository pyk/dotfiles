wget https://github.com/vim/vim/archive/v8.0.1428.tar.gz
tar xzvf v8.0.1428.tar.gz
cd vim-8.0.1428/
./configure --prefix=/home/pyk/.local --enable-pythoninterp=yes --enable-python3interp=yes --enable-luainterp=yes
make
make install
