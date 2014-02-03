#!/bin/sh

# Create a vim home directory as well as a place for backups.  We don't want to
# leave vim backups all over the place.

set -e

# Get the directory of the unit
unit_dir=$(cd $(dirname $0); pwd)

# Create a .vim directory and a backup directory since our basic .vimrc will
# put backup files into it.  This helps prevent littering of swapfiles
# everywhere.
mkdir -p $HOME/.vim/backup

# Copy the basic vimrc $HOME
cp $unit_dir/basic-vimrc.vim ~/.vimrc
