#!/bin/bash
docker build -t consul7:build .
docker build -t consul6:build . -f Dockerfile-grandpa
docker build -t consulamzn:build . -f Dockerfile-amzn
docker run -v $HOME/Downloads/consul-rpms:/RPMS consul7:build
docker run -v $HOME/Downloads/consul-rpms:/RPMS consul6:build
docker run -v $HOME/Downloads/consul-rpms:/RPMS consulamzn:build