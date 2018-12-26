#! /bin/sh

trap 'echo error exit' EXIT

if [ $# != 1 ]; then
  echo "need argument: sketchname"
  exit 1
fi

if [ -d "$1" ]; then
  n="${1%/}"
  if [ -f "$n/$n.pde" ]; then
    processing "$n/$n.pde"
  else
    echo "not sketch dir"
    exit 1
  fi
elif [ -f "$1" ]; then
  d=$(dirname "$1")
  f=$(basename "$1" .pde)
  if [ "$d" == "$f" ]; then
    processing "$1"
  else
    echo "not valid processing sketch dir and file name"
    exit 1
  fi
else
  echo "neither sketch dir nor pde file"
  exit 1
fi

trap - EXIT
