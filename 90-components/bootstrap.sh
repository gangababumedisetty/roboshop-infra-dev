#!/bin/bash

component=$1
environment=$2
app_version=$3
DOMAIN=$4
dnf install ansible -y

cd /home/ec2-user
git clone https://github.com/gangababumedisetty/ansible-roboshop-roles-tf.git

cd ansible-roboshop-roles-tf
git pull
ansible-playbook -e component=$component -e env=$environment -e app_version=$app_version  -e domain=$DOMAIN roboshop.yaml
