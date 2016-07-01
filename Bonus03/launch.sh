#!/bin/bash
docker stop swifty && docker rm swifty
docker build -t tnoah/swift .
docker run --name swifty -it tnoah/swift
