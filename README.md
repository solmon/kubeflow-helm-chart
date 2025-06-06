# Kubeflow Helm Chart

This repository contains a Helm chart for deploying Kubeflow services on Kubernetes. The chart provides a convenient way to manage the deployment and configuration of Kubeflow components.

## Prerequisites

- Kubernetes cluster (version 1.16 or later)
- Helm (version 3.0 or later)

## Installation

To install the Kubeflow Helm chart, follow these steps:

1. Clone the repository:

   ```
   git clone https://github.com/your-repo/kubeflow-helm-chart.git
   cd kubeflow-helm-chart
   ```

2. Install the chart:

   ```
   helm install <release-name> .
   ```

   Replace `<release-name>` with a name for your Helm release.

## Configuration

The default configuration values can be found in the `values.yaml` file. You can override these values by providing your own `values.yaml` file during installation:

```
helm install <release-name> . -f custom-values.yaml
```

## Templates

The chart includes the following templates:

- **deployment.yaml**: Defines the Kubernetes deployment resource.
- **service.yaml**: Defines the Kubernetes service resource.
- **configmap.yaml**: Defines a ConfigMap resource for non-confidential data.
- **ingress.yaml**: Defines the Ingress resource for routing external traffic.
- **serviceaccount.yaml**: Defines a ServiceAccount resource for Pod identity.
- **rbac.yaml**: Defines RBAC resources for access control.
- **_helpers.tpl**: Contains reusable helper templates.

## Uninstallation

To uninstall the chart, run:

```
helm uninstall <release-name>
```

## License

This project is licensed under the MIT License. See the LICENSE file for more details.