#!/bin/bash

# For Ubuntu 22.04 on ARM architecture
# Installing Java
sudo apt update -y
sudo apt install openjdk-11-jre -y
java --version

# Installing Jenkins
curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key | sudo tee \
  /usr/share/keyrings/jenkins-keyring.asc > /dev/null
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt-get update -y
sudo apt-get install jenkins -y

# Additional step for ARM: Install the "daemon" package
sudo apt-get install daemon -y

# Restart Jenkins service
sudo systemctl restart jenkins

# Print Jenkins status
sudo systemctl status jenkins