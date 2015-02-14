# If rbenv if not currently in the path, add it
echo $PATH | grep --quiet rbenv || PATH="$HOME/.rbenv/bin:$PATH"
rbenv global 2.0.0-p353
