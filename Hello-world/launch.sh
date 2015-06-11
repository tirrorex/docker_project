#!/bin/bash
boot2docker up
export DOCKER_HOST=tcp://192.168.59.103:2376
export DOCKER_CERT_PATH=/nfs/zfs-student-4/users/2014_paris/tnoah/.boot2docker/certs/boot2docker-vm
export DOCKER_TLS_VERIFY=1
VBoxManage controlvm "boot2docker-vm" natpf1 "tcp-port8080,tcp,,8080,,8080";
docker build -t hello/world:v42 .
docker run -it -p 8080:80 -name hello hello/world:v42 /bin/bash
