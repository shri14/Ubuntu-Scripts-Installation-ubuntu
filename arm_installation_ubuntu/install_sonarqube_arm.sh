#!/bin/bash

# Update package list and install necessary tools
sudo apt update
sudo apt install -y unzip wget

# Create sonarqube user
sudo adduser --system --no-create-home sonarqube

# Download SonarQube
SONAR_VERSION="9.4.0.54424"
wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-${SONAR_VERSION}.zip

# Unzip SonarQube
sudo unzip sonarqube-${SONAR_VERSION}.zip -d /opt/

# Set permissions
sudo chmod -R 755 /opt/sonarqube-${SONAR_VERSION}
sudo chown -R sonarqube:sonarqube /opt/sonarqube-${SONAR_VERSION}

# Start SonarQube
cd /opt/sonarqube-${SONAR_VERSION}/bin/linux-arm64/
sudo -u sonarqube ./sonar.sh start

# Clean up
rm sonarqube-${SONAR_VERSION}.zip

# Print status
sudo -u sonarqube ./sonar.sh status