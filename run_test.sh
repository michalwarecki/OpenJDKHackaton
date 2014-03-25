#!/bin/sh

echo "Executing $1"

/home/openjdk/jtreg/linux/bin/jtreg -agentvm -a -ea -esa -v:fail,error,time -retain:fail,error -ignore:quiet -timeoutFactor:4 -J-Xmx512m -concurrency:4 -jdk:/usr/local/jvm/openjdk-1.9.0-internal/ -exclude:ProblemList.txt -vmoption:-Xmx512m "$1"
