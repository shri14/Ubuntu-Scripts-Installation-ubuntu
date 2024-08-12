#!/bin/bash

# Update package list and install necessary tools
sudo apt-get update
sudo apt-get install -y wget apt-transport-https gnupg lsb-release

# Import the Trivy GPG key
wget -qO - https://aquasecurity.github.io/trivy-repo/deb/public.key | gpg --dearmor | sudo tee /usr/share/keyrings/trivy.gpg > /dev/null

# Add the Trivy repository to the sources list
echo "deb [arch=arm64 signed-by=/usr/share/keyrings/trivy.gpg] https://aquasecurity.github.io/trivy-repo/deb $(lsb_release -sc) main" | sudo tee -a /etc/apt/sources.list.d/trivy.list

# Update package list again
sudo apt-get update

# Install Trivy
sudo apt-get install -y trivy

# Verify the installation
trivy --version