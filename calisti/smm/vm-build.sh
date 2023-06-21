#! /usr/bin/env bash

docker run -d --rm --privileged --cgroupns=host --name systemd-ubuntu --network=kind --tmpfs /tmp --tmpfs /run --tmpfs /run/lock -v /sys/fs/cgroup:/sys/fs/cgroup jrei/systemd-ubuntu 
docker exec -t systemd-ubuntu bash -c "apt-get -y update && apt-get install -y curl iptables iproute2 sudo"
export VM_NAME=systemd-ubuntu