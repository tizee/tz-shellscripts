#!/usr/bin/env sh

line() {
  local line
  while read line; do
    [ -d "${line%%\|*}" ] && echo "$line"
  done < ~/.z
  return 0
}
line
