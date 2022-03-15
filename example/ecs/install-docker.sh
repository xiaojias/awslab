#!/bin/sh
yum upgrade -y

amazon-linux-extras install docker -y

systemctl start docker
systemctl enable docker
usermod -a -G docker ec2-user
