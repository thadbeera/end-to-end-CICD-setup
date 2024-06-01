#!/bin/bash
aws ec2 describe-instances --instance-ids $instance_id     --query 'Reservations[*].Instances[*].PublicIpAddress'     --output text >inventory.ini
sed -i -e 's/^/ubuntu@/' inventory.ini