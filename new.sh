#! /bin/sh

trap 'echo error exit' EXIT

if [ $# != 1 ]; then
  echo "need argument: sketchname"
  exit 1
fi

if [ -e "$1" ]; then
  echo "name \"$1\" already exists"
  exit 1
fi

mkdir "$1"
touch "$1/$1.pde"

trap - EXIT
