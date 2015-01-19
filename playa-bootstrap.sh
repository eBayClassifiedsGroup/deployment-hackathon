#!/bin/bash

if [ -e playa-mesos ] ; then
    echo "directory playa-mesos already exists. move or delete this directory!" >&2
    exit 1
fi

git clone https://github.com/mesosphere/playa-mesos.git

ORIG_FILE=playa-mesos/Vagrantfile
CUSTOM_FILE=dependencies/Vagrantfile

if [ -e $ORIG_FILE ] ; then
    mv $ORIG_FILE $ORIG_FILE.orig
fi
cp $CUSTOM_FILE playa-mesos

cd playa-mesos

./bin/test
