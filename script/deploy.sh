#!/bin/sh
 
ssh ec2-user@52.77.202.147 <<EOF
  cd /var/www/html
  git pull
  sudo service nginx restart
  sudo service php-fpm restart
  exit
EOF