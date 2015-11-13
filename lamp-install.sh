#!/bin/sh
apt-get update  # To get the latest package lists
apt-get install apache2
apt-get update  # To get the latest package lists
sudo apt-get install mysql-server php5-mysql
sudo mysql_install_db
sudo mysql_secure_installation
apt-get update  # To get the latest package lists
sudo apt-get install php5 libapache2-mod-php5 php5-mcrypt
sudo apt-get install php5-cli
#etc.
