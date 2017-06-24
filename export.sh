#! /bin/sh

(
  set -x
  rm -rf export
  processing-java --sketch=doodles --output=export --build
)
echo "exported sketch now in directory export"
echo "java source file in export/source/doodles.java"

