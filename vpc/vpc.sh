#!/bin/bash

aws ec2 create-vpc \
--cidr-block 10.0.0.0/8

aws ec2 describe-vpcs \
--vpc-ids
#{
 #    "Vpcs": [
 #        {
 #            "CidrBlock": "192.168.0.0/24",
 #            "DhcpOptionsId": "dopt-cd5228a4",
 #            "State": "available",
 #            "VpcId": "vpc-037c541942e463618",
 #            "OwnerId": "455790677231",
 #            "InstanceTenancy": "default",
 #            "CidrBlockAssociationSet": [
 #                {
 #                    "AssociationId": "vpc-cidr-assoc-030df76198541bc90",
 #                    "CidrBlock": "192.168.0.0/24",
 #                    "CidrBlockState": {
 #                        "State": "associated"
 #                    }
 #                }
 #            ],
 #            "IsDefault": false
 #        },
 #        {
 #            "CidrBlock": "172.31.0.0/16",
 #            "DhcpOptionsId": "dopt-cd5228a4",
 #            "State": "available",
 #            "VpcId": "vpc-6bbdc002",
 #            "OwnerId": "455790677231",
 #            "InstanceTenancy": "default",
 #            "CidrBlockAssociationSet": [
 #                {
 #                    "AssociationId": "vpc-cidr-assoc-86b023ef",
 #                    "CidrBlock": "172.31.0.0/16",
 #                    "CidrBlockState": {
 #                        "State": "associated"
 #                    }
 #                }
 #            ],
 #            "IsDefault": true
 #        }
 #    ]
 #}