#!/bin/bash
# Runs as root via EC2 user data (Amazon Linux 2023)
dnf update -y
dnf install -y docker
usermod -a -G docker ec2-user
systemctl enable --now docker.service
docker run --name mynginx1 --restart unless-stopped -p 80:80 -d nginx
