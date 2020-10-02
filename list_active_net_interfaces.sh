#!/usr/bin/env bash

get_interfaces(){
    # local interfaces=$(get_tmux_option @net_speed_interfaces "")
    local interfaces=""
    if [[ -z "$interfaces" ]] ; then
        if is_osx; then
	  local interfaces=$(netstat -i -b | awk -F " " '{print $1}' | tail -n+2 | awk '!seen[$1]++' | awk '{print $1}' | sed 's/*//' | sed '/^e/!d')
	  # netstat -I en0 -b | sed '1,1d' | head -n 1 | awk -F " " '{print $7}'
	elif is_linux; then
	  for interface in /sys/class/net/*; do
	      interfaces+=$(echo $(basename $interface) " ");
	  done
	elif is_cygwin; then
	  # panic here
	  echo "NOT SUPPORTED"
	fi
    fi

    # Do not quote the variable. This way will handle trailing whitespace
    echo -n $interfaces
}

sum_speed()
{
    local column=$1
    declare -a interfaces=$(get_interfaces)

    local line=""
    local val=0
    for intf in ${interfaces[@]} ; do
        if is_linux; then
	  line=$(cat /proc/net/dev | grep "$intf" | cut -d':' -f 2)
	  speed="$(echo -n $line | cut -d' ' -f $column)"
	  let val+=${speed:=0}
	fi
	if is_osx;then
	  # echo $intf
	  line=$(netstat -I $intf -b| awk -v column=$column -F " " '{print $(column)}'  | tail -n+2  |  awk '!seen[$1]++' | sed '/^0/d' )
	  let val+=${line:=0}
	fi
    done

    echo $val
}

is_osx() {
    [[ $(uname -s) =~ Darwin* ]]
}

is_linux() {
    [[ $(uname -s) =~ Linux* ]]
}

is_cygwin() {
    [[ $(uname -s) =~ CYGWIN* ]]
}

