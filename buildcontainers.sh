#!/bin/bash -x
sudo rm -rf /tmp/fedora*
rm *.tar.xz
export LIBGUESTFS_BACKEND=direct
sudo appliance-creator -c container-19-small.ks -d -v -t /tmp \
    -o /tmp --name "fedora-19-small" --release 19 \
    --format=qcow2
sudo virt-tar-out -a \
    /tmp/fedora-19-small/fedora-19-small-sda.qcow2 / - | \
    xz --best > fedora-19-small.tar.xz

