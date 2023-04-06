#! /bin/bash

########################
#Backup files          #
########################
sudo cp /etc/ssl/openssl.cnf /etc/ssl/openssl.bak
sudo cp /etc/apache2/mods-available/ssl.conf /etc/apache2/mods-available/ssl.bak

#####################################
#copy files to downgrade TLS to v1.1#
#####################################

sudo cp /home/pslearner/lab/tls11_web_server/openssl.cnf /etc/ssl/openssl.cnf
sudo cp /home/pslearner/lab/tls11_web_server/ssl.conf /etc/apache2/mods-available/ssl.conf

#######################################
# restart apache                      #
#######################################

sudo systemctl restart apache2