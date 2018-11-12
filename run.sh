#! /bin/sh

trap 'echo error exit' EXIT

if [ $# != 1 ]; then
  echo "need argument: sketch dirname"
  exit 1
fi

processing-java --sketch="$1" --run

trap - EXIT
