#! /bin/sh

echo "should run linerotate"
processing-java --sketch=doodles --run linerotate
echo "should say unknown arg and run circlewave"
processing-java --sketch=doodles --run doodlename
echo "should say no args and run circlewave"
processing-java --sketch=doodles --run

