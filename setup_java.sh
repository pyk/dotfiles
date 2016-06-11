echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | sudo /usr/bin/debconf-set-selections
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
sudo apt-get install oracle-java8-installer
mkdir -p ~/.dotfiles/java
echo "export JAVA_HOME=/usr/lib/jvm/java-8-oracle" > ~/.dotfiles/java/path.sh
exec $SHELL
