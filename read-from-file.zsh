#!/usr/bin/env zsh

export MY_ITEMS=()

if [[ -e /tmp/my.items ]]; then
  export MY_ITEMS=($(cat /tmp/my.items))
  for i in $MY_ITEMS; do
    echo $i
  done
fi
