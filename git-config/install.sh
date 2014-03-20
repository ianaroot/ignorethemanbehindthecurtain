#!/bin/sh

read -p "This will delete ~/.gitconfig press y to proceed: " confirm

dir=$(cd $(dirname $0); pwd)

test $confirm = 'y' -o $confirm = 'Y' && {

  rm -rf $HOME/.gitconfig
  ln -s "$dir/gitconfig" $HOME/.gitconfig
}
