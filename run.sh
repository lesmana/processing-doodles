#! /bin/sh

# Copyright Lesmana Zimmer lesmana@gmx.de
# Licensed under WTFPL version 2
# http://www.wtfpl.net/about/

trap 'echo error exit' EXIT

if [ $# != 1 ]; then
  echo "need argument: sketch dirname or filename"
  echo "will run processing sketch without editor"
  echo "argument can be:"
  echo "  sketchname"
  echo "  sketchname/"
  echo "  sketchname/sketchname.pde"
  exit 1
fi

echo "given argument: $1"

# make sure sketchname is valid processing sketch dir or file
if [ -d "$1" ]; then
  # if given dir name
  n=$(realpath --relative-to=. "$1")
  if [ -f "$n/$n.pde" ]; then
    sketchdirname="$n"
  else
    echo "argument is not valid processing sketch dir"
    exit 1
  fi
elif [ -f "$1" ]; then
  # if given file name
  d=$(dirname "$1")
  f=$(basename "$1" .pde)
  if [ "$d" == "$f" ]; then
    sketchdirname="$d"
  else
    echo "argument is not valid processing sketch dir"
    exit 1
  fi
else
  echo "unable to determine valid sketchdirname from given argument"
  exit 1
fi

echo "sketchdirname: $sketchdirname"
echo "running processing sketch"

processing-java --sketch="$sketchdirname" --run

trap - EXIT
