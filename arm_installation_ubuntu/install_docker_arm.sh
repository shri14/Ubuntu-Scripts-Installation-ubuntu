#!/bin/bash

# Update package lists
sudo apt update

# Install Docker
sudo apt install docker.io -y

# Add jenkins and ubuntu users to the docker group
sudo usermod -aG docker jenkins
sudo usermod -aG docker ubuntu

# Restart Docker service
sudo systemctl restart docker

# Set permissions for Docker socket
sudo chmod 777 /var/run/docker.sock

# Install additional packages for ARM compatibility
sudo apt install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg \
    lsb-release

# Add Docker's official GPG key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

# Set up the stable repository for ARM
echo \
  "deb [arch=arm64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# Update package lists again
sudo apt update

# Install Docker Engine for ARM
sudo apt install -y docker-ce docker-ce-cli containerd.io