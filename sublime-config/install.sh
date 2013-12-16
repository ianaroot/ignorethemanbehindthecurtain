set -e
mkdir -p _resources
cd _resources
test -d sublime-conf || git clone https://github.com/quackingduck/sublime-conf.git
cd sublime-conf
mv "$HOME/Library/Application Support/Sublime Text 2/Packages" /tmp/previous-sublime-packages
ln -s `pwd` "$HOME/Library/Application Support/Sublime Text 2/Packages"
