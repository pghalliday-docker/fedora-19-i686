#!/bin/bash -x
sudo rm -rf /tmp/fedora*
rm *.tar.xz
export LIBGUESTFS_BACKEND=direct
sudo appliance-creator -c container-19-medium.ks -d -v -t /tmp \
    -o /tmp --name "fedora-19-medium" --release 19 \
    --format=qcow2
virt-tar-out -a \
    /tmp/fedora-20-medium/fedora-19-medium-sda.qcow2 / - | \
    xz --best > fedora-19-medium.tar.xz
