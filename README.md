# Helmfile Builder Image

Debian based Container image for efficient working with Helm/Helmfile related deployments to Kubernetes. 
Perfectly suited for CI/CD Environments.  

Source Code of this Repository is: [8gears/helmfile-builder-image](https://github.com/8gears/helmfile-builder-image/)

This image is rebuild nightly

## Installed Applications

| Application and Helm Plugins                | Version |
| ------------------------------------------- | ------- |
| Helmfile                                    | 0.130.1 |
| Kubectl                                     | 1.19.0  |
| SOPS: Secrets OPerationS                    | 3.6.1   |
| Helm                                        | 3.3.4   |
| Helm-Diff Plugin                            | 3.1.3   |
| Helm-Secrets Plugin                         | 2.0.2   |
| Helm-S3 Plugin                              | 2.0.2   |
| Helm-Git Plugin                             | 0.8.1   |
| Python  + pipenv                            | 3.8.6   |
| awscli                                      | latest  |
| gnupg, curl, gettext, jq, postgresql-client |         |

## Usage

This image is always up to date due to night rebuild. 

Images can be pulled from two locations:

```shell script
docker pull c8n.io/8gears/helmfile-builder-image
```

```shell script
docker pull 8gears/helmfile-builder-image
```

## Sponsors

This project is sponsored by [container-registry.com](https://container-registry.com/), a no frills Harbor backed Managed Container Registry Service for Teams.
[![](https://logo.clearbit.com/container-registry.com)](https://container-registry.com/)
