#!/usr/bin/env bash

echo $# $0 $1
# "$*" single space
for str in "$*"; do
  echo $str
done
# $* splited by space
for str in $*; do
  echo $str
done
# if $1 exists, then eval $@
echo ${1:+"$@"}

