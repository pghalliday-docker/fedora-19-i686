fedora-19-i686
==============

Scripts to generate a Fedora 19 i686 docker base image.

The kickstart script comes from https://git.fedorahosted.org/cgit/cloud-kickstarts.git/plain/container/container-small-19.ks

The rest comes from https://github.com/lsm5/docker-brew-fedora

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
sudo docker build -rm --tag=pghalliday/fedora-19-i686 .
```

To run the container
--------------------

Use linux32 so that package managers and such don't get confused about the architecture

```
sudo docker run -t -i pghalliday/fedora-19-i686 /bin/linux32
```

Then `uname -m` will report `i686`
