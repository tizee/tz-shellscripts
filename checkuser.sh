#!/bin/sh
# check whether there is a user in system  
name=$1
if [ -n $name]; then 
	name=$USER
fi
if [ -e $HOME/.cargo/bin/rg ] || [ -e /usr/local/bin/rg ] || [ -e /usr/bin/rg ]; then
	echo "Use ripgrep to search"
	if rg $name /etc/passwd; then 
	      echo "User $name exists"	
        else
	      echo "User $name dose not exist"	
	fi
elif [ -e /usr/bin/grep ]; then
	echo "Use grep to search"
	if grep $name /etc/passwd; then 
	      echo "User $name exists"	
        else
	      echo "User $name does not exist"	
	fi
else 
	echo "no supported search tool"
fi

