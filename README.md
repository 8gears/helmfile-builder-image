# Helmfile Builder Image

Debian based Container image for efficient working with Helm/Helmfile related deployments to Kubernetes. 
Perfectly suited for CI/CD Environments.  

Source Code of this Repository is: [8gears/helmfile-builder-image](https://github.com/8gears/helmfile-builder-image/)

This image is rebuild nightly

[![build](https://github.com/8gears/helmfile-builder-image/actions/workflows/build.yaml/badge.svg)](https://github.com/8gears/helmfile-builder-image/actions/workflows/build.yaml)

## Installed Applications

| Application and Helm Plugins                | Version |
| ------------------------------------------- | ------- |
| Helmfile                                    | 0.140.0 |
| Kubectl                                     | 1.19.0  |
| SOPS: Secrets OPerationS                    | 3.7.1   |
| Helm                                        | 3.6.3   |
| Helm-Diff Plugin                            | 3.1.3   |
| Helm-Secrets Plugin                         | 3.8.3   |
| Helm-S3 Plugin                              | 0.10.0   |
| Helm-Git Plugin                             | 0.10.0   |
| Python  + pipenv                            | 3.9.7   |
| awscli                                      | latest  |
| gnupg, curl, gettext, jq, postgresql-client |         |

## Usage

This image is always up to date due to night rebuild. 

Images can be pulled from [Docker Hub](https://hub.docker.com/repository/docker/8gears/helmfile-builder-image) and [C8N](https://c8n.io/harbor/projects/9/repositories/helmfile-builder-image).


```shell script
docker pull c8n.io/8gears/helmfile-builder-image
```

```shell script
docker pull 8gears/helmfile-builder-image
```

### Tags

His image has two tag types:
 `latest` refers to a nightly build image with up to date debian and python 3.X base image.
 `version`eg. `0.130.1` refers to the version of the Helmfile  


## Sponsors

This project is sponsored by [container-registry.com](https://container-registry.com/), a no frills Harbor backed Managed Container Registry Service for Teams.
[![](https://logo.clearbit.com/container-registry.com)](https://container-registry.com/)
