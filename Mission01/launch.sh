#!/bin/bash
docker stop hello && docker rm hello
docker build -t hello/world:v42 .
docker run -it -p 8080:80 --name hello hello/world:v42 /bin/bash
