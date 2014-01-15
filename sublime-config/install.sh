set -e
test -d "$HOME/Library/Application Support/Sublime Text 2" || {
  echo "Starting Sublime Text to generate local preferences directory, will kill in 10 seconds..."
  subl /tmp/test.txt
  sleep 10
  killall "Sublime Text 2"
}

mkdir -p _resources
cd _resources
test -d sublime-conf || git clone https://github.com/quackingduck/sublime-conf.git
cd sublime-conf
test -d "$HOME/Library/Application Support/Sublime Text 2/Packages" &&
  mv "$HOME/Library/Application Support/Sublime Text 2/Packages" /tmp/previous-sublime-packages
ln -fs `pwd` "$HOME/Library/Application Support/Sublime Text 2/Packages"
