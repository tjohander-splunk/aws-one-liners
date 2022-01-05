#!/bin/bash

# Run one instance of a Spring Pet Clinic App Server
aws ec2 run-instances \
--image-id ami-025167d5d70fe5137 \
--count 1 \
--instance-type t2.micro\
--key-name tj-devlab-key-pair-001 \
--security-group-ids sg-0d94ae1405bd3ed8b \
--subnet-id \
--tag-specifications \
'ResourceType=instance,Tags=[{application, Spring-Pet-Clinic}]'


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