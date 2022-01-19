#!/bin/bash
yum update -y
amazon-linux-extras install -y lamp-mariadb10.2-php7.2 php7.2
yum install -y httpd

cat >/var/www/html/index.html <<EOL
<html>
  <h1>Your Webserver is accessible from $(curl http://169.254.169.254/latest/meta-data/instance-id)
  at $(curl http://169.254.169.254/latest/meta-data/local-ipv4)</h1>
</html>
EOL
systemctl start httpd
systemctl enable httpd