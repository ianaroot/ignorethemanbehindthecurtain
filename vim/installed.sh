#!/bin/bash

if [ -e "$HOME/.vimrc" ] && [ -d "$HOME/.vim" ]; then 
  exit 0
else
  exit 1
fi
