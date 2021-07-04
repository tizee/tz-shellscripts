#!/usr/bin/env zsh

echo "${(@F)@}"
local array=("first word" "" "third word")
echo $array
echo ${(@)array}
echo "${(@)array}"
echo "$array"
