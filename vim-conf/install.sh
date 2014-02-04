#!/bin/sh

# Create a vim home directory as well as a place for backups.  We don't want to
# leave vim backups all over the place.

set -e

# Get the directory of the unit
unit_dir=$(cd $(dirname $0); pwd)

# Copy the basic vimrc $HOME
cp $unit_dir/basic-vimrc.vim ~/.vimrc
