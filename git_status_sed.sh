#!/usr/bin/env bash
git status -su |
# add brackets
sed -E 's/^(..[^[:space:]]*)[[:space:]]+(.*)$/[\1]  \2/' 
