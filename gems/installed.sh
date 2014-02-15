set -e

which -s rbenv && which -s bundle && {
  eval "$(rbenv init -)"
  cd $(dirname $0)
  bundle check > /dev/null
}
