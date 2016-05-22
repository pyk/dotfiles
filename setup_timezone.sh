sudo apt-get install ntp
sudo cp ~/.dotfiles/ntp/ntp.conf /etc/ntp.conf
sudo systemctl restart ntp
echo 'run date(1) to make sure the time is correct'
