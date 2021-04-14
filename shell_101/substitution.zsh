#!/usr/bin/env zsh
# Parameter Expansion Flags
# A 
# Convert the substitution into an array expression, even if it otherwise would be scalar
# s:string:
# Force field splitting at the separator string
echo "${${(As: :)$(git version 2>/dev/null)}[3]}"
