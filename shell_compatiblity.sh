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
# read shell expansion for detail explanation
# https://dev.to/greymd/why-1-is-used-in-shell-script-364h
