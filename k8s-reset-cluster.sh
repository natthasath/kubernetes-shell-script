#!/bin/bash

# Step 1: Drain Nodes
echo "Draining nodes..."
kubectl drain --force --ignore-daemonsets --delete-local-data --grace-period=30s <node1> <node2> <node3> # Replace <node1>, <node2>, <node3> with your actual node names

# Step 2: Delete Nodes
echo "Deleting nodes..."
kubectl delete node <node1> <node2> <node3> # Replace <node1>, <node2>, <node3> with your actual node names

# Step 3: Reset Control Plane (for kubeadm-based clusters)
echo "Resetting control plane..."
kubeadm reset --force

# Step 4: Reset Worker Nodes (if needed)
# Add commands here if you need to reset worker nodes

# Step 5: Reinitialize Cluster (for kubeadm-based clusters)
# Add commands here if you need to reinitialize the cluster

echo "Cluster reset complete."
