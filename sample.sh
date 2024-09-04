#!/bin/bash

yum update -y
yum install httpd git -y
systemctl start httpd
systemctl enable httpd

cd /var/www/html/
git clone https://github.com/Sudeepa8055/calculator1.git .
systemctl restart httpd

