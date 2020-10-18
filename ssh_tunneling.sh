#!/usr/bin/env bash

# $1 socket-file $2 username@server_ip
ssh -M -S $1 -fnNTL 9999:github.com:22 $2
# check running
# ssh -S socket-file -O check username@server_ip
# exit
# ssh -S socket-file -O exit username@server_ip
