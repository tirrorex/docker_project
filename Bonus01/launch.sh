#!/bin/sh
docker stop myphp && docker rm myphp
docker build -t tnoah/php .
docker run -d -p 80:80 --name myphp tnoah/php
