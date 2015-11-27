#!/bin/bash
cd ~
wget http://wordpress.org/latest.tar.gz
tar xzvf latest.tar.gz
sudo apt-get update
sudo apt-get install php5-gd libssh2-php
cd ~/wordpress
cp wp-config-sample.php wp-config.php
sed -i 's/database_name_here/databasename/g' /home/webinar/wordpress/wp-config.php
sed -i 's/username_here/username/g' /home/webinar/wordpress/wp-config.php
sed -i 's/password_here/password/g' /home/webinar/wordpress/wp-config.php
