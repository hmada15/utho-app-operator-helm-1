# Utho Operator Helm Chart

[![Artifact Hub](https://img.shields.io/endpoint?url=https://artifacthub.io/badge/repository/utho-operator)](https://artifacthub.io/packages/search?repo=utho-operator)

This chart deploys the Utho Operator on an **Utho Kubernetes Cluster** using the Helm package manager. The Utho Operator is a Kubernetes operator that manages the lifecycle of **Utho Application** CRs in your cluster.

Note: This won't be able to function properly on any standard Kubernetes cluster, you need to have an Utho Kubernetes Cluster.

## Prerequisites
- To build this cluster, you need to have an Utho Kubernetes Cluster. You can create one using one of the following methods:
    - [Terraform](https://github.com/uthoplatforms/terraform-provider-utho)
    - [Utho Console](https://console.utho.com)
    - [uthoctl](https://github.com/uthoplatforms/utho-cli)
    - [Utho API](https://utho.com/api-docs/)
- You need to have Helm CLI installed on your machine.
- You must have an Utho API Key.

## Installing the Chart
To install the chart with the release name `utho-app-operator`:

Add the Utho Operator Repository to your Helm repositories:
```bash
$ helm repo add utho-operator https://uthoplatforms.github.io/utho-app-operator-helm/
```

```bash
helm repo update
```

Install the Utho Operator Chart:
```bash
helm install <release_name> utho-operator/utho-app-operator-chart --version 0.1.5 --set API_KEY=<YOUR_API_KEY> --set image.tag=0.1.4 -n <namespace> --create-namespace
```

The command deploys the Utho Operator on the Kubernetes cluster in the default configuration.

## Customising the Chart
To customise the chart, you can download the chart and edit the `values.yaml` file. You can also pass the values as arguments to the `helm install` command.
```bash
$ helm pull utho-operator/utho-app-operator-chart
```
**Note**: You can find the values file at the root of the repo directory.
## What gets Installed
The Utho Operator Helm Chart creates the `utho-operator` and installs the following resources in that namespace:
- Utho Operator Deployment
- UthoApplication CRD
- UthoDNS CRD
- Utho Operator Service
- Utho Operator Service Account
- Cluster Roles and Cluster Role Bindings


