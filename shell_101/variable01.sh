#!/usr/bin/env bash

function temp_ok() {
  local v1="hello"
  echo $v1
}
temp_ok
if [[ -z $v1 ]];then
  echo "it's empty"
fi

# vim:ft=bash

