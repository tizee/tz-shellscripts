#!/usr/bin/env bash

file=$(fd '#08' -1 -0 .)
name=$(print $file | sed -E 's/#08 //g' | sed -E 's/_[0-9]+//g')
echo $file $name
mv -v $file $name
