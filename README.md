# DevOps Tool Installation Scripts

This repository contains a collection of shell scripts for installing various DevOps tools on both x86_64 and ARM64 architectures. These scripts are designed to simplify the installation process of essential tools used in DevOps practices.

## Available Scripts

### ARM64 Architecture
- `install_awscli_arm.sh`: Install AWS CLI on ARM64 systems
- `install_docker_arm.sh`: Install Docker on ARM64 systems
- `install_java_jenkins_arm_ubuntu.sh`: Install Java and Jenkins on ARM64 Ubuntu systems
- `install_kubectl_arm.sh`: Install kubectl on ARM64 systems
- `install_minikube_arm.sh`: Install Minikube on ARM64 systems
- `install_sonarqube_arm.sh`: Install SonarQube on ARM64 systems
- `install_terraform_arm.sh`: Install Terraform on ARM64 systems
- `install_trivy_arm.sh`: Install Trivy on ARM64 systems

### x86_64 Architecture
- `Install-Docker.sh`: Install Docker on x86_64 systems
- `Install-Jenkins.sh`: Install Jenkins on x86_64 systems
- `Install-Minikube.sh`: Install Minikube on x86_64 systems
- `Install-Sonarqube.sh`: Install SonarQube on x86_64 systems
- `Install-awscli.sh`: Install AWS CLI on x86_64 systems
- `Install-kubectl.sh`: Install kubectl on x86_64 systems
- `Install-terraform.sh`: Install Terraform on x86_64 systems
- `Install-trivy.sh`: Install Trivy on x86_64 systems

## Usage

1. Clone this repository:
   ```
   git clone https://github.com/shri14/Ubuntu-Scripts-Installation-ubuntu.git
   ```

2. Navigate to the repository directory:
   ```
   cd devops-installation-scripts
   ```

3. Make the script executable:
   ```
   chmod +x script_name.sh
   ```

4. Run the script:
   ```
   ./script_name.sh
   ```

Replace `script_name.sh` with the name of the script you want to run.

## Important Notes

- These scripts are designed to run on Ubuntu-based systems. They may need modifications for other Linux distributions.
- Always review scripts before running them on your system.
- Some scripts may require sudo privileges to install packages and modify system files.
- Ensure your system meets the minimum requirements for each tool before installation.

## Contributing

Contributions to improve existing scripts or add new ones are welcome. Please submit a pull request with your changes.
.