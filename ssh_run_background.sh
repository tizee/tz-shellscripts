#!/usr/bin/env bash

# https://stackoverflow.com/questions/2241063/bash-script-to-set-up-a-temporary-ssh-tunnel

ssh -M -S my_socket_file -fnNT -L 9999:website.com:22 username@remote_ip 

ssh -S my_socket_file -O check username@remote_ip

ssh -S my_socket_file -O exit username@remote_ip
