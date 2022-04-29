#!/bin/sh
[  -L "$HOME/.config" ] && echo "linked"
[  -e "$HOME/.config" ] && echo "installed"
[  -e "$HOME/.config_backup" ] && echo "$HOME/.config_backup exists"
