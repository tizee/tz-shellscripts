#!/usr/bin/env bash

function temp_array(){
  local params=${@:2}
  echo $params
}

temp_array 11 22 33 

# vim:ft=bash
