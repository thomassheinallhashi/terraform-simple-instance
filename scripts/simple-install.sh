#!/bin/bash

# System updates
echo 'libc6 libraries/restart-without-asking boolean true' | sudo debconf-set-selections
export DEBIAN_FRONTEND=noninteractive
echo "Updating apt repos..."
apt-get update -y > /dev/null 2>&1

echo "Installing AWS CLI..."
pip3 install botocore
pip3 install boto3
pip3 install awscli

echo "Get public IP..."
export PUBLIC_IP=`curl http://169.254.169.254/latest/meta-data/public-ipv4`

echo "All done!"
