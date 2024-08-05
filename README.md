Ubuntu 22.04 "Jammy Jellyfish" Ansible Molecule Test Image
================================================

[![CI][gitlabci-image]][gitlabci-link]
[![Apache-2.0 license][dockerhub-image]][dockerhub-link]
[![Apache-2.0 license][license-image]][license-link]

Ubuntu 22.04 "Jammy Jellyfish" based image intended for [Ansible](https://www.ansible.com/) role testing using [Molecule](https://ansible.readthedocs.io/projects/molecule/).

This image is built automatically on each commit to the `main` branch, and published on the [Docker Hub](https://hub.docker.com/) as [`havlasme/ubuntu22-systemd-ansible:latest`](https://hub.docker.com/r/havlasme/ubuntu22-systemd-ansible).

How to Use
----------

To use this image in Molecule scenario, update the `platforms` section in the `molecule.yml`.

```yaml title="molecule.yml"
platforms:
- name: <rolename>-ubuntu-jammy
  image: docker.io/havlasme/ubuntu22-systemd-ansible:latest
  pre_build_image: true
  command: '/lib/systemd/systemd'
  volumes:
  - /sys/fs/cgroup:/sys/fs/cgroup:ro
```

How to Build
------------

To build the image locally simply run:

```shell
make build
```

To customize the image name, namespace, or version update the respective variable.

```shell
make build IMAGENAME=ubuntu22-systemd-ansible NAMESPACE=havlasme VERSION=latest
```

License
-------

[Apache-2.0][license-link]

Author Information
------------------

Created in 2024 by [Tomáš Havlas](https://havlas.me/).


[license-image]: https://img.shields.io/badge/license-Apache2.0-blue.svg?style=flat-square
[license-link]: LICENSE

[dockerhub-image]: https://img.shields.io/docker/pulls/havlasme/ubuntu22-systemd-ansible?style=flat-square
[dockerhub-link]: https://hub.docker.com/r/havlasme/ubuntu22-systemd-ansible

[gitlabci-image]: https://img.shields.io/gitlab/pipeline-status/havlas.me/docker-ubuntu22-systemd-ansible?style=flat-square
[gitlabci-link]: https://gitlab.com/havlas.me/docker-ubuntu22-systemd-ansible/-/pipelines
