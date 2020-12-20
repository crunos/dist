#!/bin/sh

exec docker run --rm -ti -v ~/.docker:/root/.docker -v /var/run/docker.sock:/var/run/docker.sock --device /dev/kvm -v $(pwd):$(pwd) -w $(pwd) crunos/os-builder:latest run qemu -disk "out/disk.img,size=10G,format=qcow2" out/crunos
