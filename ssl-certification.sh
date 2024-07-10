#!/bin/bash
sudo apt-get update
sudo apt-get install snapd
sudo snap install --classic certbot
sudo ln -s /snap/bin/certbot /usr/bin/certbot
sudo certbot --nginx
sudo nginx -t
sudo systemctl restart nginx
