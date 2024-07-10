#!/bin/bash
sleep 200
cd /home/ubuntu/MERN/
cd TravelMemory/backend/
sudo pm2 stop travelmemory-be
sudo pm2 start index.js --name travelmemory-be
cd ../frontend
AWS_ip=`curl http://checkip.amazonaws.com`
sudo echo -e "export const baseUrl = 'http://$AWS_ip:3001'" > src/url.js
sudo pm2 stop travelmemory-fe
sudo pm2 start --name travelmemory-fe npm -- start
sudo systemctl restart nginx