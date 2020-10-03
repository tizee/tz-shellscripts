#!/usr/bin/env bash

# Need setup ssh tunneling first
gitclone(){
  # setup ssh tunneling
  local port=9999
  local url=$1
  if [ -z url ];then
    echo "need a url"
  else
    if [[ $(uname -s) = Darwin ]];then
      local tunneling_url=$(echo $url | sed -E "s/(git@|http:\/\/|https:\/\/)/ssh:\/\/git@/" | sed "s/github.com:/localhost:${port}\//")
    elif [[ $(uname -s) = Linux ]];then
      local tunneling_url=$(echo $url | sed -r "s/(git@|http:\/\/|https:\/\/)/ssh:\/\/git@/" | sed "s/github.com:/localhost:${port}\//")
    fi
    echo "Cloning using $tunneling_url"
    git clone $tunneling_url
  fi
}

gitclone $1
