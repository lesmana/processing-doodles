#! /bin/bash

trap 'echo error exit' EXIT

if [ $# != 2 ]; then
  echo "need arguments: oldname newname"
  echo "will rename processing sketch dir from oldname to newname"
  echo "oldname/oldname.pde will be renamed to newname/newname.pde"
  echo "oldname may be:"
  echo "  sketchname"
  echo "  sketchname/"
  echo "  sketchname/sketchname.pde"
  echo "and must exist"
  echo "newname may be:"
  echo "  sketchname"
  echo "  sketchname/"
  echo "and must not exist"
  exit 1
fi

echo "given oldname: $1"
echo "given newname: $2"

# make sure first argument is valid processing sketch dir name
if [ -d "$1" ]; then
  # if given dirname
  # strip trailing slash if exists
  n=$(realpath --relative-to=. "$1")
  # ensure that dirname contains pde file
  if [ -f "$n/$n.pde" ]; then
    olddir="$n"
    oldfile="$n".pde
  else
    echo "oldname is not sketch dir"
    exit 1
  fi
elif [ -f "$1" ]; then
  # if given filename
  # split dirname and filename
  d=$(dirname "$1")
  f=$(basename "$1" .pde)
  # ensure that dirname is same as filename
  if [ "$d" = "$f" ]; then
    olddir="$d"
    oldfile="$f".pde
  else
    echo "oldname is not valid processing sketch file name"
    exit 1
  fi
else
  echo "oldname is neither sketch dir nor pde file"
  exit 1
fi

echo "olddir: $olddir"
echo "oldfile: $oldfile"

# make sure second argument does not exists
if [ -e "$2" ]; then
  echo "newname already exists"
  exit 1
fi

# make sure second argument is not path
d=$(dirname "$2")
if [ "$d" = "." ]; then
  n=$(realpath --relative-to=. "$2")
  newdir="$n"
  newfile="$n".pde
else
  echo "newname may not be subdir"
  exit 1
fi

echo "newdir: $newdir"
echo "newfile: $newfile"

mv -v $olddir $newdir
mv -v $newdir/$oldfile $newdir/$newfile

trap - EXIT
