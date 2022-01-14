#!/bin/bash


aws ec2 create-subnet \
--vpc-id vpc-037c541942e463618 \
--cidr-block 192.168.0.160/27 \
--availability-zone us-east-2c

