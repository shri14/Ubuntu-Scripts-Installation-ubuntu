#!/bin/bash

# Update package list and install curl
sudo apt update
sudo apt install -y curl

# Download kubectl binary for ARM64
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/arm64/kubectl"

# Install kubectl
sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl

# Remove the downloaded binary
rm kubectl

# Verify the installation
kubectl version --client
