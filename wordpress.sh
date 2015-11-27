#!/bin/bash
cd ~
wget http://wordpress.org/latest.tar.gz
tar xzvf latest.tar.gz
sudo apt-get update
sudo apt-get install php5-gd libssh2-php
cd ~/wordpress
cp wp-config-sample.php wp-config.php
