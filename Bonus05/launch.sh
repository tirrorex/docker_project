#!/bin/bash
docker stop rubtest && docker rm rubtest
docker build -t tnoah/rub .
docker run -it --name rubtest tnoah/rub
