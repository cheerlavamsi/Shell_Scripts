#!bin/bash
yum install nginx -y

cd /usr/share/nginx/html

rm -rf *

curl https://studentapi-cit.s3-us-west-2.amazonaws.com/studentapp-frontend.tar.gz | tar -xz 

systemctl enable nginx

systemctl start nginx