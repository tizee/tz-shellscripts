#!/bin/sh
[ ! -L ~/.config ] || [ ! -e ~/.config ] || echo "not installed" && exit 1
