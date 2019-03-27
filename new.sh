#! /bin/bash

trap 'echo error exit' EXIT

if [ $# != 1 ]; then
  echo "need argument: sketchname"
  echo "will create sketch dir with sketch file"
  echo "obeying the processing sketch rules"
  echo "that dirname and filename must be same"
  echo "for example sketchname/sketchname.pde"
  echo "sketchname may be:"
  echo "  somename"
  echo "  somename/"
  echo "  somename/somename.pde"
  echo "  somename.pde"
  exit 1
fi

echo "given sketchname: $1"

d=$(dirname "$1")
f=$(basename "$1" .pde)
if [ "$d" = "." ]; then
  # given only dir name or only file name
  sketchdir="$f"
  sketchfile="$f".pde
elif [ "$d" == "$f" ]; then
  # given dir name file name combo
  sketchdir="$d"
  sketchfile="$f".pde
else
  echo "sketchname is not valid processing sketch dir"
  exit 1
fi

if [ -e "$sketchdir/$sketchfile" ]; then
  echo "$sketchdir/$sketchfile already exists"
  exit 1
fi

echo "create: $sketchdir/$sketchfile"

mkdir "$sketchdir"
touch "$sketchdir/$sketchfile"

trap - EXIT
