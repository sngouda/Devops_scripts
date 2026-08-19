#!/bin/bash
######################
#Author: Suhas
#Date: 19th-Aug
#Version: v1
#
#This script will report the AWS resource usage
########################

echo "=== S3 Buckets ==="
aws s3 ls

echo "=== EC2 Instances ==="
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

echo "=== Lambda Functions ==="
aws lambda list-functions

echo "=== IAM Users ==="
aws iam list-users
