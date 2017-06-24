#! /bin/sh

# super simple test script
# to test argument handling of doodles

echo "this will run doodles with different arguments"
echo "1. wait till sketch open"
echo "2. verify that it is correct"
echo "3. close sketch"
echo "4. goto 1."
echo
echo "should run linerotate"
echo
(
  set -x
  processing-java --sketch=doodles --run linerotate
)
echo
echo "should say unknown arg and run circlewave"
echo
(
  set -x
  processing-java --sketch=doodles --run doodlename
)
echo
echo "should say no args and run circlewave"
echo
(
  set -x
  processing-java --sketch=doodles --run
)
echo
echo "done"
