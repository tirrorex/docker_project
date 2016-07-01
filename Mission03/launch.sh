#!/bin/bash
docker build -t tnoah/volumes:v42 .
docker run -it -v /Users/Shared:/home/tnoah/share --user tnoah tnoah/volumes:v42 /bin/bash
