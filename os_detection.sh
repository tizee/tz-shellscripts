#!/usr/bin/env bash

default_osx=""
default_freebsd=""
default_linux=""
default_cygwin=""
default_other=""

is_osx() {
  [[ $(uname -s) =~ Darwin* ]]
}

is_linux() {
  [[ $(uname -s) =~ Linux* ]]
}

is_freebsd(){
  [[ $(uname -s) =~ FreeBSD* ]]
}

is_cygwin(){
  [[ $(uname -s) =~ CYGWIN* ]]
}

icon_default(){
  if is_osx;then
    echo -n "$default_osx"
  elif is_linux;then
    echo -n "$default_linux"
  elif is_freebsd;then
    echo -n "$default_freebsd"
  elif is_cygwin;then
    echo -n "$default_cygwin"
  else
    echo -n "$default_other"
  fi
}

print_icon(){
  echo "$(icon_default)"
}

main(){
  print_icon
}
main

