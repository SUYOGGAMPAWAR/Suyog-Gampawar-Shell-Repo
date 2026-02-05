#!/bin/bash
#
#===================================================================
#Author : Suyog
#Date : 30/01/2026
#Purpose : This script will tell the aws resource usage
#Version : v1
#===================================================================
#
#So what resources are we gonna track?
#AWS S3
#AWS EC2
#AWS Lambda
#AWS IAM Users
#
set -x

#list s3 buckets
#
echo "print a list of s3 buckets"
aws s3 ls > resourceTracker

#list EC2 instances
#
echo "print the list of ec2 instances"
aws ec2 describe-instances | jq '.Reservations[]'

#list Lambda functions
#
echo "print the list of lambda functions"
aws lambda list-functions >> resourceTracker

#list IAM Users
#
echo "print the list of IAM Users"
aws iam list-users
