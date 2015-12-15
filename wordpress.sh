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
sudo rsync -avP ~/wordpress/ /var/www/html/
mkdir /var/www/html/wp-content/uploads
sudo chown -R :www-data /var/www/html/wp-content/uploads
sudo chown -R www-data:www-data /var/www/html
sudo find /var/www/html/ -type d -exec chmod 755 {} \;
sudo find /var/www/html/ -type f -exec chmod 644 {} \;
sudo service apache2 restart
