#!/bin/bash

echo "Update inventory list..."

# Update packages
sudo apt update

# Install Ansible
sudo apt install -y ansible

# Check Ansible
echo "Installed Ansible version:"
ansible --version
