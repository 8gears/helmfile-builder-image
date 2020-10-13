FROM python:3-slim

ARG HELMFILE_VERSION=0.130.2
ARG HELM_VERSION=3.3.4
ARG KUBECTL_VERSION=1.19.0
ARG HELM_DIFF_VERSION=3.1.3
ARG HELM_SECRETS_VERSION=2.0.2
ARG HELM_S3_VERSION=0.9.2
ARG HELM_GIT_VERSION=0.8.1
ARG SOPS_VERSION=3.6.1

WORKDIR /

RUN apt-get update && apt-get install -y \
    git \
    gnupg \
    curl  \
    gettext \
    jq \
    awscli \
    postgresql-client \
    && rm -rf /var/lib/apt/lists/*

ADD https://github.com/mozilla/sops/releases/download/v${SOPS_VERSION}/sops-v${SOPS_VERSION}.linux /usr/local/bin/sops
RUN chmod +x /usr/local/bin/sops

ADD https://storage.googleapis.com/kubernetes-release/release/v${KUBECTL_VERSION}/bin/linux/amd64/kubectl /usr/local/bin/kubectl
RUN chmod +x /usr/local/bin/kubectl

ADD https://amazon-eks.s3.us-west-2.amazonaws.com/1.15.10/2020-02-22/bin/linux/amd64/aws-iam-authenticator /usr/local/bin/aws-iam-authenticator
RUN chmod +x /usr/local/bin/aws-iam-authenticator

ADD https://get.helm.sh/helm-v${HELM_VERSION}-linux-amd64.tar.gz /tmp
RUN tar -zxvf /tmp/helm* -C /tmp \
  && mv /tmp/linux-amd64/helm /bin/helm \
  && rm -rf /tmp/*

RUN helm plugin install https://github.com/databus23/helm-diff --version ${HELM_DIFF_VERSION} && \
    helm plugin install https://github.com/futuresimple/helm-secrets --version ${HELM_SECRETS_VERSION} && \
    helm plugin install https://github.com/hypnoglow/helm-s3.git --version ${HELM_S3_VERSION} && \
    helm plugin install https://github.com/aslafy-z/helm-git --version ${HELM_GIT_VERSION}

ADD https://github.com/roboll/helmfile/releases/download/v${HELMFILE_VERSION}/helmfile_linux_amd64 /usr/local/bin/helmfile
RUN chmod +x /usr/local/bin/helmfile

RUN pip install pipenv

ENTRYPOINT ["/bin/bash"]
