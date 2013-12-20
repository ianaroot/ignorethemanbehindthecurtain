set -e

! test -f "$HOME/.rspec" || {
  read -p "This will replace ~/.rspec, press y to proceed: " confirm
  test $confirm = 'y' -o $confirm = 'Y'
}

echo "--color --format documentation" > $HOME/.rspec
