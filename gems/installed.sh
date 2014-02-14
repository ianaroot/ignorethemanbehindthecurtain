set -e

which rbenv && {
  eval "$(rbenv init -)"
  cd $(dirname $0)
  bundle check > /dev/null
}
