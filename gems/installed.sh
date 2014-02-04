set -e

eval "$(rbenv init -)"
cd $(dirname $0)
bundle check > /dev/null
