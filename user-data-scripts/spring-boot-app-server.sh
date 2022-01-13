#!/bin/bash
SERVICE_NAME='spring-pet-clinic.service'
APP_DIR='spring-pet-clinic'
JAR_FILE_NAME='spring-petclinic-2.4.5.jar'
# Refer to region-specific values here: https://docs.aws.amazon.com/codedeploy/latest/userguide/resource-kit.html#resource-kit-bucket-names
CODEDEPLOY_AGENT_BUCKET_NAME='aws-codedeploy-us-east-2'
CODEDEPLOY_AGENT_REGION_IDENTIFIER='us-east-2'

yum update -y
yum install ruby wget -y

# Install Java 11
amazon-linux-extras install java-openjdk11 -y

# Install CodeDeploy Agent.  Details here: https://docs.aws.amazon.com/codedeploy/latest/userguide/codedeploy-agent-operations-install-linux.html
CODEDEPLOY_BIN="/opt/codedeploy-agent/bin/codedeploy-agent"
$CODEDEPLOY_BIN stop
yum erase codedeploy-agent -y
cd /home/ec2-user
wget https://${CODEDEPLOY_AGENT_BUCKET_NAME}.s3.${CODEDEPLOY_AGENT_REGION_IDENTIFIER}.amazonaws.com/latest/install
chmod +x ./install
./install auto

# Setup Systemd to run the Spring Boot app as service
cat >/etc/systemd/system/${SERVICE_NAME} <<EOL
[Unit]
Description=webserver Daemon

[Service]
ExecStart= /usr/bin/java -jar /home/ec2-user/${APP_DIR}/${JAR_FILE_NAME}

[Install]
WantedBy=multi-user.target
EOL
systemctl enable spring-pet-clinic.service