#!/bin/bash

# Install kubectl
sudo curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
# kubectl version --client

# Install eksctl
ARCH=amd64
PLATFORM=$(uname -s)_$ARCH
sudo curl -sLO "https://github.com/eksctl-io/eksctl/releases/latest/download/eksctl_$PLATFORM.tar.gz"
sudo tar -xzf eksctl_$PLATFORM.tar.gz -C /tmp
sudo mv /tmp/eksctl /usr/local/bin
# eksctl version

# Install Git
sudo yum install git -y
sudo git clone https://github.com/tarang1998/EKS-and-Monitoring-with-OpenTelemetry.git



