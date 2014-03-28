#!/bin/sh

dir=$(cd $(dirname $0); pwd)

rm -rf $HOME/.gitconfig
ln -s "$dir/gitconfig" $HOME/.gitconfig
