#!/bin/bash
docker stop myjs && docker rm myjs
docker build -t tnoah/js .
docker run -d -p 8080:8080 --name myjs tnoah/js
