#!/bin/bash

# Update package list and install necessary tools
sudo apt-get update
sudo apt-get install -y wget gpg lsb-release

# Import the HashiCorp GPG key
wget -O- https://apt.releases.hashicorp.com/gpg | \
    gpg --dearmor | \
    sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg > /dev/null

# Add the HashiCorp repository to the sources list
echo "deb [arch=arm64 signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] \
    https://apt.releases.hashicorp.com $(lsb_release -cs) main" | \
    sudo tee /etc/apt/sources.list.d/hashicorp.list

# Update package list again
sudo apt-get update

# Install Terraform
sudo apt-get install -y terraform

# Verify the installation
terraform --version