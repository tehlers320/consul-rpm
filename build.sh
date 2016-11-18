#!/bin/bash
docker build -t consul7:build .
docker build -t consul6:build . -f Dockerfile-grandpa
docker run -v $HOME/Downloads/consul-rpms:/RPMS consul7:build
docker run -v $HOME/Downloads/consul-rpms:/RPMS consul6:build