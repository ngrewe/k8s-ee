ARG NETWORK_EE_TAG=stable-2.12
FROM quay.io/ansible/network-ee:${NETWORK_EE_TAG}
LABEL org.opencontainers.image.source=https://github.com/ngrewe/k8s-ee
ARG HELM_VERSION=v3.11.3
ARG KUSTOMIZE_VERSION=v5.0.1
RUN curl -sLo - https://github.com/kubernetes-sigs/kustomize/releases/download/kustomize%2F${KUSTOMIZE_VERSION}/kustomize_${KUSTOMIZE_VERSION}_linux_amd64.tar.gz | tar xz -C /usr/local/bin
RUN curl -sLo - https://get.helm.sh/helm-${HELM_VERSION}-linux-amd64.tar.gz | tar xzf - --strip-components=1 -C /usr/local/bin --owner root --group root linux-amd64/helm