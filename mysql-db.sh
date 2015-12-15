#!/bin/bash



MYSQL=`which mysql`

Q1="CREATE DATABASE IF NOT EXISTS databasename;"
Q2="CREATE USER username@localhost IDENTIFIED BY 'password';"
Q3="GRANT ALL PRIVILEGES ON databasename.* TO username@localhost;"
Q4="FLUSH PRIVILEGES;"
SQL="${Q1}${Q2}${Q3}${Q4}"


$MYSQL -uroot -p -e "$SQL"

echo  "wordpress database created"
