#!/bin/bash

echo "Installing Ansible and Testing connection"

sudo apt update 
echo "y" | sudo apt install ansible
sudo cat << EOF > /etc/ansible/hosts
kubemaster 
kubeworker01
kubeworker02
EOF

echo "Test Ansible Connection to hosts"

ansible -m ping all

