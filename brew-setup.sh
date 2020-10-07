#!/usr/bin/env bash

# enable read/write
sudo chgrp -R sudo $(brew --prefix)/*; sudo chmod -R g+w $(brew --prefix)/*
