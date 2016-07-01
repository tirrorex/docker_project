#!/bin/sh

docker stop dockdock && docker rm dockdock
docker build -t tnoah/dockdocker .
docker run --privileged -t -i dind
