# 🎉 Kubernetes Shell Script

Kubernetes is an open-source container orchestration platform that automates the deployment, scaling, and management of containerized applications. It provides a robust framework for running distributed systems resiliently, ensuring efficient resource utilization and high availability.

![version](https://img.shields.io/badge/version-1.0-blue)
![rating](https://img.shields.io/badge/rating-★★★★★-yellow)
![uptime](https://img.shields.io/badge/uptime-100%25-brightgreen)

### ✅ Requirements

- [Kubectl](https://kubernetes.io/docs/tasks/tools/#kubectl)

### 🧩 Kubectl Command

| Service               | Command (get)                         | Command (create)                       | Command (delete)                         |
|-----------------------|---------------------------------------|----------------------------------------|------------------------------------------|
| Pods                  | `kubectl get pods`                    | `kubectl create -f <pod.yaml>`         | `kubectl delete pod <pod_name>`          |
| Deployments           | `kubectl get deployments`             | `kubectl create -f <deployment.yaml>`  | `kubectl delete deployment <deployment_name>` |
| ReplicationSets       | `kubectl get rs`                      | `kubectl apply -f <rs.yaml>`           | `kubectl delete rs <rs_name>`            |
| Services              | `kubectl get svc`                     | `kubectl create -f <service.yaml>`     | `kubectl delete service <service_name>`  |
| ConfigMaps            | `kubectl get configmaps`              | `kubectl create configmap <name> --from-file=<file>` | `kubectl delete configmap <name>` |
| Secrets               | `kubectl get secrets`                 | `kubectl create secret generic <name> --from-file=<file>` | `kubectl delete secret <name>` |
| Namespaces            | `kubectl get ns`                      | `kubectl create ns <namespace>`        | `kubectl delete ns <namespace>`          |
| PersistentVolumes     | `kubectl get pv`                      | `kubectl create -f <pv.yaml>`          | `kubectl delete pv <pv_name>`            |
| PersistentVolumeClaims| `kubectl get pvc`                     | `kubectl create -f <pvc.yaml>`         | `kubectl delete pvc <pvc_name>`          |
| Nodes                 | `kubectl get nodes`                   | N/A                                    | N/A                                      |
| Ingress               | `kubectl get ingress`                 | `kubectl create -f <ingress.yaml>`     | `kubectl delete ingress <ingress_name>`  |
| Events                | `kubectl get events`                  | N/A                                    | N/A                                      |

### 🧩 Helm Command

| Service     | Command (get)               | Command (create)            | Command (delete)         |
|-------------|-----------------------------|-----------------------------|--------------------------|
| Chart       | `helm get`                  | `helm create`               |                          |
| Chart       | `helm get all`              |                             |                          |
| Chart       | `helm get hooks`            |                             |                          |
| Chart       | `helm get manifest`         |                             |                          |
| Chart       | `helm get notes`            |                             |                          |
| Chart       | `helm get values`           |                             |                          |
|             |                             | `helm package`              |                          |
|             |                             | `helm repo add`             | `helm repo remove`       |
|             |                             | `helm repo update`          |                          |
| Release     |                             | `helm install`              | `helm uninstall`         |
| Release     |                             |                             | `helm delete`            |
| Status      | `helm status`               |                             |                          |
| History     | `helm history`              |                             |                          |
| Lint        |                             | `helm lint`                 |                          |
| Upgrade     |                             | `helm upgrade`              |                          |
| Rollback    |                             |                             | `helm rollback`          |
| Test        |                             | `helm test`                 |                          |
| Dependency  |                             | `helm dependency update`    |                          |
| Dependency  |                             | `helm dependency build`     |                          |
| Plugin      | `helm plugin list`          | `helm plugin install`       | `helm plugin uninstall`  |
| Repo        | `helm repo list`            |                             |                          |


### ⛑️ Helm Directory Structure

```
└── 📁nginx
    └── .helmignore
    └── Chart.yaml
    └── 📁charts
    └── nginx-0.1.0.tgz
    └── 📁templates
        └── deployment.yaml
        └── hpa.yaml
        └── ingress.yaml
        └── NOTES.txt
        └── service.yaml
        └── serviceaccount.yaml
        └── 📁tests
            └── test-connection.yaml
        └── _helpers.tpl
    └── values.yaml
```

| Filename                | Description                                                                                            |
|-------------------------|--------------------------------------------------------------------------------------------------------|
| `.helmignore`           | Specifies patterns to ignore when packaging Helm charts.                                                |
| `Chart.yaml`            | Contains metadata about the Helm chart, such as its name, version, description, and dependencies.     |
| `nginx-0.1.0.tgz`       | An example of a packaged chart (a tarball), typically generated after running `helm package` on the chart. |
| `deployment.yaml`       | A Kubernetes Deployment manifest template defining how your nginx deployment should be configured.    |
| `hpa.yaml`              | A Horizontal Pod Autoscaler (HPA) manifest template, used to automatically scale the number of replicas based on CPU utilization. |
| `ingress.yaml`          | An Ingress manifest template defining how external traffic should reach your nginx service.           |
| `NOTES.txt`             | Contains optional usage notes or instructions that are displayed after the chart is installed.        |
| `service.yaml`          | A Kubernetes Service manifest template defining how your nginx service should be exposed within the Kubernetes cluster. |
| `serviceaccount.yaml`   | A Kubernetes ServiceAccount manifest template defining the service account used by your nginx deployment. |
| `test-connection.yaml`  | An example test manifest to verify the connection to the nginx service.                                 |
| `_helpers.tpl`          | Contains helper templates that can be included in other template files to avoid duplication of code.  |
| `values.yaml`           | Contains default configuration values for your Helm chart. Users can override these values during installation. |
