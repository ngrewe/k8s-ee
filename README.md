# Ansible Kubernetes Execution Environment

The  [Ansible network-ee image](https://quay.io/repository/ansible/network-ee) already contains all necessary components
for basic interactions with the Kubernetes API. It is, unfortunately, missing binaries for [Helm](https://helm.sh/)
and [Kustomize](https://kustomize.io/), which means that
neither the `kubernetes.core.helm*` modules nor the `kubernetes.core.kustomize` lookup will be functional within
the EE out of the box. This docker image fixes that by adding
the binaries that are missing from the network EE.

## Versions

* Ansible Network EE: stable-2.12
* Helm: v3.11.3
* Kustomize: v5.0.1

## Licence

Any original work is licensed under the MIT license. Ansible, Helm, Kustomize, and their components are distributed under their respective licenses.