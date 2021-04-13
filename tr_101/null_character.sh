#!/usr/bin/env bash

# useful for commands with --print0 option
# i.e. fd/find
fd 'test' --print0 | tr '\0' '\n'
