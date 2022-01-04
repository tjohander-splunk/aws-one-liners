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