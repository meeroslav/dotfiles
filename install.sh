#!/bin/bash

dir="$HOME/Dev"
mkdir -p $dir
cd $dir
git clone --recursive https://github.com/meeroslav/dotfiles.git

cd dotfiles
sh src/main.sh