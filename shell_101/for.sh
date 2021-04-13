#!/usr/bin/env bash

# array
fnd=()
for x; do case $x in
  -a) echo 'a option';;
  -b) echo 'b option';;
  -c) echo 'c option';;
  --help) echo "usage: [-a] [-b] [-c] [--help]";exit;;
  --) shift; fnd+=("$@");break;;
  *) echo 'wildcard option';;
esac; shift; done
set -- "${fnd[@]}"
