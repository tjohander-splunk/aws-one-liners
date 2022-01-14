#!/bin/bash
yum update -y
sudo amazon-linux-extras install -y lamp-mariadb10.2-php7.2 php7.2
yum install -y httpd
cat >/var/www/html/index.html <<EOL
<html>
  <h1>Your Webserver is accessible</h1>
</html>
EOL
systemctl start httpd
systemctl enable httpd