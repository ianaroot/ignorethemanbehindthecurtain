set -e

# Sources and tests since it was possibly just installed
test -d "$HOME/.rbenv" && eval "$(rbenv init -)"
ruby -v | grep --quiet "ruby 2.0.0p353"
