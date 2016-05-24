#!/bin/bash
docker build -t tnoah/sshd:v42 .
docker stop tnoah_sshd
docker rm tnoah_sshd
docker run -d -p 42:42 --name tnoah_sshd tnoah/sshd:v42
ssh tnoah@192.168.99.100 -p 42
