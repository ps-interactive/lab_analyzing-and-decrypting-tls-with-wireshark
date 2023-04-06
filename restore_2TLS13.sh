#! /bin/bash

########################
#Restore files         #
########################
sudo cp /etc/ssl/openssl.bak /etc/ssl/openssl.cnf
sudo cp /etc/apache2/mods-available/ssl.bak /etc/apache2/mods-available/ssl.conf

#######################################
# restart apache                      #
#######################################

sudo systemctl restart apache2
