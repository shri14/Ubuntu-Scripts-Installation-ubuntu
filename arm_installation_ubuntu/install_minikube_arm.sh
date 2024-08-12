#!/bin/bash

# Update and upgrade system packages
sudo apt update
sudo apt upgrade -y

# Download Minikube binary for ARM64
wget https://storage.googleapis.com/minikube/releases/latest/minikube-linux-arm64

# Make the binary executable
chmod +x minikube-linux-arm64

# Move the binary to a directory in the system PATH
sudo mv minikube-linux-arm64 /usr/local/bin/minikube

# Verify the installation
minikube version