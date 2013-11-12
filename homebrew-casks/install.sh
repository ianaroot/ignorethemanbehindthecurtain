# Gaurd against missing dependecies
which -s brew || exit 1
test -d '/usr/local/Library/Taps/phinze-cask' || exit 1

#Gaurd against existing install
test -d '/Library/Caches/Homebrew/brew-cask--git' || exit

#Command for installing brew-cask
brew install brew-cask