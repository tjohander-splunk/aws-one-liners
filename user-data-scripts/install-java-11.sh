# Update YUM & Install Java
# Scripts entered as user data are run as the root user,
# so do not use the sudo command in the script. Remember that any
# files you create will be owned by root; if you need non-root users
# to have file access, you should modify the permissions accordingly
# in the script. Also, because the script is not run interactively,
# you cannot include commands that require user feedback (such as yum
# update without the -y flag).
#!/bin/bash
yum update -y
amazon-linux-extras install java-openjdk11 -y
cat >/etc/systemd/system/spring-pet-clinic.service <<EOL
[Unit]
Description=webserver Daemon

[Service]
ExecStart= /usr/bin/java -jar /home/ec2-user/spring=pet-clinic/spring-petclinic-2.4.5.jar

[Install]
WantedBy=multi-user.target
EOL