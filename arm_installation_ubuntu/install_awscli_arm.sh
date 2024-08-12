#!/bin/bash

# Update package list and install necessary tools
sudo apt update
sudo apt install -y unzip curl

# Download AWS CLI v2 installer
curl "https://awscli.amazonaws.com/awscli-exe-linux-aarch64.zip" -o "awscliv2.zip"

# Unzip the installer
unzip awscliv2.zip

# Install AWS CLI
sudo ./aws/install

# Clean up downloaded and extracted files
rm awscliv2.zip
rm -rf aws

# Verify the installation
aws --version
