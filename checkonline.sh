#!/bin/sh

HOSTS="cn.bing.com google.com"

main(){
  # set in tmux
  online_flag="Offline"
  for host in $HOSTS; do
    if wget -q --spider --timeout=5 --tries=1 $host; then
      echo "Online"
    else
      echo "Offline"
    fi
  done
}

main
