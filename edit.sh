#! /bin/bash

# Copyright Lesmana Zimmer lesmana@gmx.de
# Licensed under WTFPL version 2
# http://www.wtfpl.net/about/

trap 'echo error exit' EXIT

if [ $# != 1 ]; then
  echo "need argument: name of processing sketch dir or file"
  echo "will open processing editor with sketch"
  echo "name can be:"
  echo "  sketchname"
  echo "  sketchname/"
  echo "  sketchname/sketchname.pde"
  exit 1
fi

echo "given sketchname: $1"

# make sure sketchname is valid processing sketch dir or file
if [ -d "$1" ]; then
  # if given dir name
  n=$(realpath --relative-to=. "$1")
  if [ -f "$n/$n.pde" ]; then
    sketchfilename="$n/$n.pde"
  else
    echo "sketchname is not valid processing sketch dir"
    exit 1
  fi
elif [ -f "$1" ]; then
  # if given file name
  d=$(dirname "$1")
  f=$(basename "$1" .pde)
  if [ "$d" == "$f" ]; then
    sketchfilename=$(realpath --relative-to=. "$1")
  else
    echo "sketchname is not valid processing sketch dir"
    exit 1
  fi
else
  echo "not able to determine valid sketchname from given sketchname"
  exit 1
fi

echo "sketchfilename: $sketchfilename"
echo "opening processing editor with sketch"

processing "$sketchfilename"

trap - EXIT
