#!/bin/bash

# Step 1: Initialize the cluster
echo "Initializing Kubernetes cluster..."
kubeadm init --pod-network-cidr=192.168.0.0/16  # Adjust pod network CIDR as per your requirement

# Step 2: Configure kubeconfig for the current user
echo "Configuring kubeconfig..."
mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config

# Step 3: Apply a pod network add-on (here we're using Calico)
echo "Applying pod network add-on..."
kubectl apply -f https://docs.projectcalico.org/manifests/calico.yaml

echo "Kubernetes cluster initialized and configured."
