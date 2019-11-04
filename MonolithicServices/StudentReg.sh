#!bin/bash
yum install nginx -y

cd /usr/share/nginx/html

rm -rf *

curl https://studentapi-cit.s3-us-west-2.amazonaws.com/studentapp-frontend.tar.gz | tar -xz 

systemctl enable nginx

systemctl start nginx

yum install java -y

useradd student

su - student

curl http://apachemirror.wuchna.com/tomcat/tomcat-8/v8.5.47/bin/apache-tomcat-8.5.47.tar.gz | tar -xz

cd apache-tomcat-8.5.47

wget https://s3-us-west-2.amazonaws.com/studentapi-cit/student.war -O webapps/student.war

wget https://s3-us-west-2.amazonaws.com/studentapi-cit/mysql-connector.jar -O lib/mysql-connector.jar

bin/startup.sh

