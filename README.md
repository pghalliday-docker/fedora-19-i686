fedora-19-i686
==============

Scripts to generate a Fedora 19 i686 docker base image

Prerequisites
-------------

- Fedora 19 i686 VM with the following packages

```
sudo yum install qemu kvm libvirt libvirt-python python-virtinst virt-manager virt-viewer
sudo yum install spin-kickstarts
sudo yum install appliance-tools
sudo yum install libguestfs libguestfs-tools
```

To build the container
----------------------

On Fedora 19 i686 VM

```
./buildcontainers.sh
```

This will generate the tarball which can then be commited and pushed

On a machine with docker installed, pull the repository then

```
docker build
```
