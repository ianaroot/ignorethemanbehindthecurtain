set -e

which rbenv 2>&1 > /dev/null && which bundle 2>&1 > /dev/null && {
  eval "$(rbenv init -)"
  cd $(dirname $0)
  bundle check > /dev/null
}
