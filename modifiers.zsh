#!/usr/bin/env zsh

local PWD=$(pwd)
echo ${PWD:h999}
local lower=${PWD:l}
echo $lower
local upper=${PWD:u}
echo $upper
