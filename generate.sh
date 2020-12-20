#!/bin/sh

docker run --rm -ti -v ~/.docker:/root/.docker -v /var/run/docker.sock:/var/run/docker.sock --device /dev/kvm -v $(pwd):$(pwd) -w $(pwd) crunos/os-builder:latest build -dir out/ crunos.yml
