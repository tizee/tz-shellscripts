#!/bin/sh
cd_wrapper() {
  # $1 for cd_wrapper
  cd "~/dev/repo_$1";
  unset -f cd_wrapper;
};
# $1 for this script file
cd_wrapper $1;
