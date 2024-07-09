#!/bin/bash
#############################################
#Author:Shridhar M Patil
#Date:Jul 6 2024
#
#To Track the resources in AWS cloud
#Version:v1.0
#############################################


set -x
echo "print S3 instances"
aws s3 ls
echo "print EC2 instances"
#aws ec2 describe-instances
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'
echo "print Lambda lsit"
aws lambda list-functions
echo "print iam list"
aws iam list-users

