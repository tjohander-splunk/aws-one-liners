#!/bin/bash
SERVICE_NAME='spring-pet-clinic.service'
APP_DIR='spring-pet-clinic'
JAR_FILE_NAME='spring-petclinic-2.4.5.jar'

yum update -y

amazon-linux-extras install java-openjdk11 -y

cat >/etc/systemd/system/${SERVICE_NAME} <<EOL
[Unit]
Description=webserver Daemon

[Service]
ExecStart= /usr/bin/java -jar /home/ec2-user/${APP_DIR}/${JAR_FILE_NAME}

[Install]
WantedBy=multi-user.target
EOL

systemctl enable spring-pet-clinic.service