# 🎉 Kubernetes Shell Script

Kubernetes is an open-source container orchestration platform that automates the deployment, scaling, and management of containerized applications. It provides a robust framework for running distributed systems resiliently, ensuring efficient resource utilization and high availability.

![version](https://img.shields.io/badge/version-1.0-blue)
![rating](https://img.shields.io/badge/rating-★★★★★-yellow)
![uptime](https://img.shields.io/badge/uptime-100%25-brightgreen)

### ✅ Requirements

- [Kubectl](https://kubernetes.io/docs/tasks/tools/#kubectl)

### 🧩 Command

| Service               | Command to Get                        | Command to Create                      | Command to Delete                        |
|-----------------------|---------------------------------------|----------------------------------------|------------------------------------------|
| Pods                  | `kubectl get pods`                    | `kubectl create -f <pod.yaml>`         | `kubectl delete pod <pod_name>`         |
| Deployments           | `kubectl get deployments`             | `kubectl create -f <deployment.yaml>`  | `kubectl delete deployment <deployment_name>` |
| ReplicationSets       | `kubectl get rs`                      | `kubectl apply -f <rs.yaml>`           | `kubectl delete rs <rs_name>`           |
| Services              | `kubectl get svc`                     | `kubectl create -f <service.yaml>`     | `kubectl delete service <service_name>` |
| ConfigMaps            | `kubectl get configmaps`              | `kubectl create configmap <name> --from-file=<file>` | `kubectl delete configmap <name>` |
| Secrets               | `kubectl get secrets`                 | `kubectl create secret generic <name> --from-file=<file>` | `kubectl delete secret <name>` |
| Namespaces            | `kubectl get ns`                      | `kubectl create ns <namespace>`        | `kubectl delete ns <namespace>` |
| PersistentVolumes     | `kubectl get pv`                      | `kubectl create -f <pv.yaml>`          | `kubectl delete pv <pv_name>`           |
| PersistentVolumeClaims| `kubectl get pvc`                     | `kubectl create -f <pvc.yaml>`         | `kubectl delete pvc <pvc_name>`        |
| Nodes                 | `kubectl get nodes`                   | N/A                                    | N/A                                     |
| Ingress               | `kubectl get ingress`                 | `kubectl create -f <ingress.yaml>`     | `kubectl delete ingress <ingress_name>` |
| Events                | `kubectl get events`                  | N/A                                    | N/A                                     |
| Helm                  | `helm list`                           | `helm install <release_name> <chart>`  | `helm uninstall <release_name>`        |
