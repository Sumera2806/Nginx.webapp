#!/bin/bash

# Update packages and install Nginx
sudo apt update -y
sudo apt install -y nginx

# Move index.html to the web root
sudo mkdir -p /var/www/html
sudo cp index.html /var/www/html/index.html

# Move Nginx config and restart the service
sudo cp nginx.conf /etc/nginx/sites-available/default
sudo systemctl restart nginx
