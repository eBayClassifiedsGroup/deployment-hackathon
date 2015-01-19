#!/bin/bash

if [ -e playa-mesos ] ; then
    echo "directory playa-mesos already exists. move or delete this directory!" >&2
    exit 1
fi

git clone https://github.com/mesosphere/playa-mesos.git

cd playa-mesos

./bin/test
