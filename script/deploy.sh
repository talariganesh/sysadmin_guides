#!/bin/sh
 
ssh app@APP.SERVER.IP.ADDRESS <<EOF
  cd /var/www/html
  git pull
  npm install --production
  sudo service nginx restart
  sudo service php-fpm restart
  exit
EOF