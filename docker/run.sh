#!/bin/sh
if [ -z "$1" ] ; then
  shared=$PWD/src
else
  shared=$PWD/$1
fi
sudo docker run -it --rm -e DISPLAY=$DISPLAY -v $shared:/src cmsc389b-base

# this runs a container using the built image
# if you want to use the pre-built image:
# sudo docker run -it --rm -e DISPLAY=$DISPLAY -v $shared:/src docker.pkg.github.com/plstic/cmsc389b-spring21/base
