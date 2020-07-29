## AWS ASG rebalancing node drainer
Helm chart for https://github.com/conservis/kube-asg-node-drainer.

### Install

`kube-asg-node-drainer` release must be installed to `kube-system` namespace: pods with system-node-critical priorityClass are not permitted in any other space.

```
helm install --namespace kube-system --name kube-asg-node-drainer --namespace kube-system conservis/kube-asg-node-drainer
```

| kube-asg-node-drainer version  | Kubernetes versions             | 
|--------------------------------|---------------------------------|
| 1.16.0                         | 1.18.x - 1.12.x                 |


## Prerequisites

- Kubernetes 1.12+ with Beta APIs enabled


## Installing the Chart

To install the chart:

```bash
helm repo add conservis https://conservis.github.io/helm-charts
helm install --namespace kube-system  kube-asg-node-drainer conservis/kube-asg-node-drainer
```

## Uninstalling the Chart

To uninstall/delete the deployment:

```bash
$ helm delete --namespace kube-system kube-asg-node-drainer
```
## Configuration

The following table lists the configurable parameters of the Nexus chart and their default values.

| Parameter                            | Description                         | Default                                 |
| -----------------------------------  | ----------------------------------  | ----------------------------------------|
| `image`                              | Docker image                        | `conservis/kube-asg-node-drainer:1.16.0`|
| `iamRole`                            | IAM Role for daemonset              | ``                                      |
