# If rbenv if not currently in the path, add it
echo $PATH | grep --quiet rbenv || PATH="$HOME/.rbenv/bin:$PATH"
test -d "$HOME/.rbenv" && eval "$(rbenv init -)"
rbenv global 2.0.0-p353
