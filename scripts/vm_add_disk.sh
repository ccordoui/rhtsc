#!/bin/bash

path="/var/lib/libvirt/images"
alphabet=({m..z}) 

for i in {0..2}
do
  for j in {1..4}
  do
    qemu-img create -f qcow2 -o preallocation=metadata ${path}/odf-worker-${i}${j}.qcow2 5G
    virsh attach-disk --domain rhtssc-worker-${i} --source ${path}/odf-worker-${i}${j}.qcow2 --target vd${alphabet[${j}]} --targetbus virtio --driver qemu --subdriver qcow2 --persistent
  done
done

