#!/bin/bash

# Update system packages
sudo yum update -y

# Install required packages for Docker
sudo yum install -y yum-utils

# Enable Docker repository in Amazon Linux
sudo amazon-linux-extras enable docker

# Install Docker
sudo yum install docker -y

# Start Docker service
sudo systemctl start docker

# Enable Docker to start on boot
sudo systemctl enable docker

# Add user to docker group to run docker commands without sudo
sudo usermod -aG docker ec2-user

# Print Docker version to verify installation
docker --version

# Installation complete message
echo "Docker has been successfully installed on Amazon Linux."

