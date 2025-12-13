#!/bin/bash

##########################################################
# Author : Pruthviraj S. Patil
# Date : 13th Dec 2025
# Version : v1
# Script Description : This Script will report the AWSresourse Useage.
# Resources we are Tracking :
# AWS S3
# AWS EC2
# AWS LAMBDA
# AWS IAM USERS
#########################################################

set -e
set -o pipefail

# 1. Find where this script is located
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

# 2. logs folder path
LOG_DIR="$SCRIPT_DIR/logs"

# 3. Create today's date (YYYY-MM-DD)
TODAY_DATE=$(date +"%Y-%m-%d")

# 4. Log file name with date
LOG_FILE="$LOG_DIR/aws-report-$TODAY_DATE.log"

# 5. Send all output to the log file
exec >> "$LOG_FILE" 2>&1

# 6. Print header
echo "========================================="
echo "AWS Daily Resource Report"
echo "Date: $(date)"
echo "========================================="

# AWS CLI Commands Which will Do all Magic

# list s3 buckets
echo "Print list of s3 buckets"
aws s3 ls 

# list EC2 Instances
echo "Print list of EC2 Instances"
aws ec2 describe-instances | jq ' .Reservations[].Instances[].InstanceId'

# list lambda functions
echo "Print list of lambda functions"
aws lambda list-functions

# list IAM Users
echo "Print list of IAM Users"
aws iam list-users


